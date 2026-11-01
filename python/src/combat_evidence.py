"""Per-boundary intent and bounded pre-failure native sequences, no source guesses."""
from collections import deque
import json
from pathlib import Path


class CombatEvidence:
    def __init__(self,directory,*,input_mode='synchronous_test_bridge'):
        self.directory=Path(directory);self.directory.mkdir(parents=True,exist_ok=True)
        self.file=(self.directory/'decisions.jsonl').open('a',encoding='utf-8')
        self.history=deque(maxlen=180);self.health=None;self.cooldown=0
        self.damage=0;self.attack_failures=0;self.window=None;self.room=None
        self.input_mode=input_mode

    def save_sequence(self,name):
        with (self.directory/(name+'.jsonl')).open('w',encoding='utf-8') as file:
            for entry in self.history:file.write(json.dumps(entry,ensure_ascii=False,separators=(',',':'))+'\n')

    def observe(self,snapshot,update,keys,boundary):
        p=snapshot.get('local_player') or {};decision=update.get('decision');aim=update.get('aim') or {}
        route=update.get('route') or {};targets=(update.get('world') or {}).get('targets') or []
        mechanisms=(update.get('world') or {}).get('attack_mechanisms') or {}
        search=update.get('search') or {}
        grid_goal=search.get('grid_objective')
        progress_candidates=[c for c in search.get('candidate_summary',[]) if c.get('hits')==0 and
                             c.get('move') not in ((0,0),[0,0]) and c.get('goal',float('inf'))<search.get('start_goal_cost',-float('inf'))]
        info={'frame':snapshot['frame'],'generation':boundary['generation'],
              'task':'clear_barrier' if grid_goal else 'combat' if targets else route.get('task','combat_idle'),
              'objective':{'grid_index':grid_goal['index'],'type':14} if grid_goal else decision.target if targets and decision else route.get('goal'),
              'reason':'no_enemy_firing_route_attempt_observed_brown_poop' if grid_goal else route.get('status') if not targets else 'observed_attack_target',
              'attack_mechanisms':{k:mechanisms.get(k) for k in ('frame','started','ended','continuity',
                  'observation_gap_frames','coverage_delta','current_mechanism_counts','coverage',
                  'new_action_signatures','new_static_animation_event_candidates',
                  'new_mechanism_signatures','new_unattributed_mechanism_signatures',
                  'new_action_mechanism_associations','state_transitions')},
              'can_attack':bool(aim.get('predicted_hit_channels',0)),
              'can_attack_grid':bool(aim.get('grid_attack')),
              'attack_reason':aim.get('no_fire_reason') if targets else 'no_mandatory_target',
              'move':list(decision.move) if decision else None,'fire':decision.fire if decision else None,
              'zero_move_reason':(('safe_progress_candidate_exists' if progress_candidates else 'no_safe_progress_candidate_reported') if targets else route.get('status')) if decision and decision.move==(0,0) else None,
              'keys':sorted(keys),'position':[p.get('x'),p.get('y')],
              'waiting_for':route.get('waiting_for'),'mechanism_evidence':route.get('evidence'),
              'search':search,'aim':aim,'motion':update.get('motion'),'weapon_control':update.get('weapon_control'),
              'world_hypotheses':(update.get('world') or {}).get('notes',[]),
              'weapons':(update.get('profile') or {}).get('weapons'),'input_mode':self.input_mode,
              'keyboard_input':snapshot.get('keyboard_input'),'input_delivery':update.get('input_delivery'),
              'timing_ms':update.get('timing'),'status':update.get('status'),
              'decision_rejection':update.get('decision_rejection'),
              'decision_age_ms':(update.get('motion') or {}).get('decision_age_ms')}
        from engine_app import _json_safe
        info=_json_safe(info)
        self.file.write(json.dumps(info,ensure_ascii=False,separators=(',',':'))+'\n')
        raw={k:v for k,v in snapshot.items() if k not in ('enums','_read_started')}
        self.history.append({'snapshot':raw,'decision':info})
        parts=p.get('health_parts') or {};health=tuple(parts.get(k,0) for k in ('red','soul','bone'))
        cooldown=p.get('damage_cooldown',0) or 0
        if (self.health is not None and any(a<b for a,b in zip(health,self.health))) or (cooldown>0 and self.cooldown<=0):
            self.damage+=1;self.save_sequence(f'damage-sequence-{self.damage:04d}')
            bodies=(update.get('world') or {}).get('bodies',[])
            near=sorted([{'id':b.id,'kind':b.kind,'clearance':((b.x-p['x'])**2+(b.y-p['y'])**2)**.5-b.radius-p.get('radius',10.)}
                         for b in bodies if b.kind in ('enemy','projectile','hazard','warning')],key=lambda b:b['clearance'])[:8]
            event={'frame':snapshot['frame'],'before_health':self.health,'after_health':health,
                   'source_attribution':'unknown','nearby_modeled_dangers':near,
                   'note':'Candidates are proximity evidence, not a confirmed damage source.'}
            previous=self.history[-2] if len(self.history)>1 else None
            if previous and previous['decision'].get('generation')!=boundary['generation']:previous=None
            prior=(previous or {}).get('decision') or {};prior_search=prior.get('search') or {}
            devices=(snapshot.get('keyboard_input') or {}).get('devices') or []
            pressed=next((d.get('pressed_actions') for d in devices if d.get('controller_index')==p.get('controller_index')),None)
            bindings=('a','d','w','s','left','right','up','down')
            expected=set(prior.get('keys') or [])
            mismatch=([key for key,actual in zip(bindings,pressed) if bool(actual)!=(key in expected)]
                      if pressed is not None and previous else None)
            event['temporal_evidence']={'previous_frame':prior.get('frame'),
                'observation_gap_frames':snapshot['frame']-prior['frame'] if previous else None,
                'previous_predicted_collision_frames':prior_search.get('hits'),
                'previous_geometry_collision_frames':prior_search.get('geometry_hits'),
                'previous_first_collision_frame':prior_search.get('first_collision_frame'),
                'previous_intended_keys':sorted(expected),'engine_input_mismatch':mismatch,
                'note':'Input comparison is against the previous observation, not a claim of failed delivery.'}
            (self.directory/f'damage-{self.damage:04d}.json').write_text(json.dumps(event,ensure_ascii=False,indent=2),encoding='utf-8')
        self.health=health;self.cooldown=cooldown
        identity=tuple(sorted((t.get('address',0),t.get('seed',0)) for t in targets))
        room=(boundary['generation'],identity)
        hp=sum(max(0,t.get('health',0)) for t in targets)
        fired=sum(w.get('num_fired',0) or 0 for w in p.get('weapons',[]))
        if not targets:self.window=None
        elif self.window is None or self.room!=room or hp<self.window[1]:self.window=(snapshot['frame'],hp,fired)
        elif snapshot['frame']-self.window[0]>=90:
            self.attack_failures+=1;name=f'attack-no-progress-{self.attack_failures:04d}'
            self.save_sequence(name)
            reason='no_shot_emitted' if fired<=self.window[2] else 'shots_emitted_without_observed_target_damage'
            (self.directory/(name+'.json')).write_text(json.dumps({'frame':snapshot['frame'],'reason':reason,
                'aim':aim,'target_health':hp,'weapon_fired_delta':fired-self.window[2],
                'source_attribution':'observed_evidence_only'},ensure_ascii=False,indent=2),encoding='utf-8')
            self.window=(snapshot['frame'],hp,fired)
        self.room=room

    def close(self):self.file.close()
