"""Index native damage callbacks without parsing the high-volume raw stream."""
import json
from decimal import Decimal,InvalidOperation
from pathlib import Path
import shutil
import time


def scalar(value):
    if not isinstance(value,dict):return value
    kind=value.get('kind')
    if kind=='integer':return int(value['value'])
    if kind in ('number','boolean','string'):return value.get('value')
    if kind=='nil':return None
    return value


def entity_identity(value):
    if not isinstance(value,dict):return {}
    identity=value.get('identity') or (value if value.get('kind')=='entity_ref' else {})
    result={}
    for key in ('Type','Variant','SubType','InitSeed','Index'):
        if key not in identity:continue
        try:
            number=Decimal(str(identity[key]))
            if not number.is_finite() or number!=number.to_integral_value():raise ValueError('noninteger identity')
            result[key]=int(number)
        except (ValueError,InvalidOperation):result[key+'_unparsed']=identity[key]
    return result


class EngineEventJournal:
    def __init__(self,config,output):
        self.config=config;self.output=Path(output);self.offset=0;self.buffer=b''
        self.attempts=[];self.pending=[];self.previous_frame=None;self.last_damage=0
        self.received=0;self.linked=0;self.last_status={};self.final=None
        self.assigned_sequences=set();self.damage_flags={};self.association_counts={}
        self.last_space_check=-1.
        self.file=(self.output/'damage-source-links.jsonl').open('a',encoding='utf-8')

    def poll(self):
        path=Path(self.config['capture_damage_path'])
        if path.exists():
            with path.open('rb') as file:
                file.seek(self.offset);data=file.read();self.offset+=len(data)
            self.buffer+=data
            while b'\n' in self.buffer:
                line,_,self.buffer=self.buffer.partition(b'\n')
                if not line:continue
                row=json.loads(line)
                if row.get('kind')=='capture_header':
                    self.damage_flags={scalar(e['key']):scalar(e['value'])
                        for e in row.get('damage_flags',{}).get('entries',[])
                        if e.get('key',{}).get('kind')=='string' and
                           e.get('value',{}).get('kind') in ('integer','number')}
                    continue
                if row.get('kind')!='callback' or 'MC_ENTITY_TAKE_DMG' not in row.get('callback_names',[row.get('callback')]):continue
                self.received+=1;args=row['args'];source=args[3] if len(args)>3 else {}
                entity=(source.get('fields') or {}).get('Entity') or {}
                flags=scalar(args[2])
                flag_names=sorted(name for name,value in self.damage_flags.items()
                    if isinstance(value,int) and value>0 and isinstance(flags,int) and flags&value==value)
                source_identity=entity_identity(entity)
                source_type=source_identity.get('Type',scalar((source.get('fields') or {}).get('Type')))
                environment=next((name for name in ('DAMAGE_POOP','DAMAGE_SPIKES','DAMAGE_FIRE','DAMAGE_PITFALL')
                                  if name in flag_names),None)
                category=('explosion' if 'DAMAGE_EXPLOSION' in flag_names else
                          'environment' if environment else 'projectile' if source_type==9 else
                          'laser' if source_type==7 else 'bomb' if source_type==4 else
                          'contact' if isinstance(source_type,int) and 10<=source_type<1000 else 'unknown')
                self.attempts.append({'callback_seq':row['seq'],'frame':row.get('frame'),'stage':row.get('stage'),
                    'room':row.get('room'),'target':entity_identity(args[0]),'amount':scalar(args[1]),'flags':flags,
                    'countdown':scalar(args[4]) if len(args)>4 else None,'source_reference':source,
                    'source_entity':source_identity,'source_type':source_type,'damage_flag_names':flag_names,
                    'source_category':category,'environment_kind':environment,
                    'source_spawner':entity_identity((entity.get('fields') or {}).get('SpawnerEntity')),
                    'source_parent':entity_identity((entity.get('fields') or {}).get('Parent'))})
        status=Path(self.config['capture_status_path'])
        if status.exists():
            try:self.last_status=json.loads(status.read_text(encoding='utf-8-sig'))
            except json.JSONDecodeError:pass # concurrent status rewrite; retry
            if self.last_status.get('error'):raise RuntimeError('engine_event_capture_failed: '+str(self.last_status['error']))

    def _resolve(self,frame,final=False):
        remaining=[]
        for damage in self.pending:
            # Allow one later observed frame for the game-side file flush.
            if not final and frame<=damage['frame']:remaining.append(damage);continue
            eligible=[a for a in self.attempts if a['target'].get('InitSeed')==damage['player_seed'] and
                a['target'].get('Type')==1 and a['stage']==damage['stage'] and a['room']==damage['room'] and
                isinstance(a['frame'],(int,float)) and damage['previous_frame']<=a['frame']<=damage['frame']]
            # TakeDamage requests can precede the HP update by one frame.
            # The lower boundary is inclusive, but each request can belong to
            # only one observed health change, including ambiguous groups.
            candidates=[a for a in eligible if a['callback_seq'] not in self.assigned_sequences]
            self.assigned_sequences.update(a['callback_seq'] for a in candidates)
            result={**damage,'engine_damage_attempts':candidates,'health_or_cooldown_change_observed':True,
                'association':'unique_engine_callback_candidate' if len(candidates)==1 else
                    'multiple_engine_callback_candidates' if candidates else 'no_matching_engine_callback',
                'applied_damage_source_confirmed':False,
                'callback_frame_window':[damage['previous_frame'],damage['frame']],
                'request_sequence_unique_assignment':True,
                'unmatched_reason':None if candidates else 'callbacks_already_associated' if eligible else
                    'no_player_request_in_buffered_frame_window',
                'note':'The callback is before damage application; its source reference is exact for that request. Health correlation does not prove other callbacks did not cancel a request.'}
            self.file.write(json.dumps(result,ensure_ascii=False,separators=(',',':'))+'\n');self.file.flush()
            if candidates:self.linked+=1
            self.association_counts[result['association']]=self.association_counts.get(result['association'],0)+1
            path=self.output/'evidence'/f"damage-{damage['damage_index']:04d}.json"
            if path.exists():
                evidence=json.loads(path.read_text(encoding='utf-8'));evidence['engine_damage_evidence']=result
                if candidates:evidence['source_attribution']=result['association']
                if len(candidates)==1:evidence['engine_damage_source_reference']=candidates[0]['source_reference']
                temp=path.with_suffix('.tmp');temp.write_text(json.dumps(evidence,ensure_ascii=False,indent=2),encoding='utf-8');temp.replace(path)
        self.pending=remaining
        # Only the association cache is bounded; both original event streams
        # retain every callback and are never sampled or rotated here.
        earliest=min((p['previous_frame'] for p in self.pending),default=frame-60)
        self.attempts=[a for a in self.attempts if a['frame'] is None or a['frame']>=earliest]
        self.assigned_sequences.intersection_update(a['callback_seq'] for a in self.attempts)

    def observe(self,snapshot,damage_index):
        now=time.monotonic()
        if now-self.last_space_check>=1:
            self.last_space_check=now
            if shutil.disk_usage(self.output).free<512*1024*1024:
                raise RuntimeError('engine_event_log_disk_space_low; ending capture without rotation or deletion')
        self.poll();frame=snapshot['frame']
        if damage_index>self.last_damage:
            self.pending.append({'damage_index':damage_index,'frame':frame,
                'previous_frame':self.previous_frame if self.previous_frame is not None else frame-1,
                'player_seed':(snapshot.get('local_player') or {}).get('seed'),
                'stage':snapshot.get('level_stage'),'room':snapshot.get('room_index')})
        self._resolve(frame);self.previous_frame=frame;self.last_damage=damage_index

    def finish(self,status):
        try:
            self.poll();self._resolve(self.previous_frame or 0,final=True)
            raw=Path(self.config['capture_path']);footer={}
            if raw.exists():
                with raw.open('rb') as stream:
                    stream.seek(0,2);size=stream.tell();stream.seek(max(0,size-65536));tail=stream.read()
                if tail.endswith(b'\n'):
                    try:footer=json.loads(tail.rstrip(b'\n').split(b'\n')[-1])
                    except (json.JSONDecodeError,UnicodeDecodeError):pass
            self.final={'mode':'all_callbacks_raw','status':status,'damage_callbacks_indexed':self.received,
                'health_observations_with_candidates':self.linked,
                'association_counts':dict(self.association_counts),
                'timing_model':'inclusive_previous_observation_with_unique_request_sequences',
                'complete':bool(status.get('closed') and status.get('complete') and not status.get('error') and
                                status.get('seen')==status.get('written') and not self.buffer and
                                footer.get('kind')=='capture_end' and footer.get('complete') and
                                footer.get('seen')==status.get('seen') and footer.get('written')==status.get('written')),
                'footer':footer}
            (self.output/'engine-event-capture-summary.json').write_text(json.dumps(self.final,ensure_ascii=False,indent=2),encoding='utf-8')
            return self.final
        finally:self.file.close()


def finish_engine_capture(events,bridge):
    status={}
    try:
        try:status=bridge.finish_capture()
        except Exception as exc:status={'error':str(exc),'complete':False}
        return events.finish(status)
    except Exception as exc:
        result={'complete':False,'error':str(exc),'mode':'all_callbacks_raw','status':status}
        (events.output/'engine-event-capture-summary.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
        return result
