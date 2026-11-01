"""Evidence for the requested first-floor boss milestone; no game control."""


class FirstFloorBossAudit:
    def __init__(self, initial_stage=1,*,startup_verified=False,initial_frame=None):
        self.initial_stage=initial_stage
        self.identity=None;self.last_frame=initial_frame;self.previous_health=None;self.max_gap=0
        self.failures=[];self.damage_seen=False;self.boss_room=None
        self.bosses={};self.clear_since=None;self.completed=False
        self.frames=0;self.control_frames=0;self.all_online=True
        if startup_verified is not True:self._fail('fresh_start_not_verified')

    def _fail(self,reason):
        if reason not in self.failures:self.failures.append(reason)
        self.completed=False

    def observe(self,snapshot,player,*,controlled=False):
        if not player:return self.result()
        frame=snapshot.get('frame')
        if not isinstance(frame,int) or isinstance(frame,bool):
            self._fail('invalid_engine_frame');return self.result()
        if frame==self.last_frame:return self.result()
        if self.last_frame is not None and frame<self.last_frame:self._fail('engine_frame_rewound')
        if self.last_frame is not None:
            self.max_gap=max(self.max_gap,frame-self.last_frame)
            if frame-self.last_frame>30:self._fail('observation_gap_exceeded')
        self.last_frame=frame;self.frames+=1
        self.control_frames+=bool(controlled)
        if snapshot.get('difficulty')!=1:self._fail('hard_mode_not_verified')
        if self.initial_stage not in (1,2) or snapshot.get('level_stage')!=self.initial_stage:
            self._fail('left_initial_floor_before_confirmation')
        identity=(player.get('address'),player.get('seed'),player.get('controller_index'))
        if None in identity:self._fail('local_player_identity_missing')
        if self.identity is None:self.identity=identity
        elif self.identity!=identity:self._fail('local_player_changed')
        parts=player.get('health_parts') or {}
        if any(not isinstance(parts.get(k),int) for k in ('red','soul','bone')):
            self._fail('health_observation_missing')
        health=tuple(parts.get(k,0) for k in ('red','soul','bone'))
        if player.get('damage_cooldown',0)>0 or (self.previous_health is not None and
                any(a<b for a,b in zip(health,self.previous_health))):
            self.damage_seen=True;self._fail('damage_observed')
        self.previous_health=health
        locality=snapshot.get('locality') or {}
        local_controllers=locality.get('local_controller_indices',[])
        online=(len(snapshot.get('players',[]))>=2 and
                locality.get('method')=='native_net_input_ownership' and
                local_controllers==[player.get('controller_index')])
        self.all_online &= online
        if snapshot.get('paused') or snapshot.get('transitional'):
            self.clear_since=None;return self.result()
        room=(snapshot.get('level_stage'),snapshot.get('room_index'))
        if (snapshot.get('room_config') or {}).get('type')!=5:
            self.clear_since=None;return self.result()
        bosses=[e for e in snapshot.get('entities',[]) if e.get('is_boss') is True and
                not e.get('dead') and e.get('health',0)>0]
        if bosses:
            self.boss_room=room;self.clear_since=None
            for e in bosses:
                key=(e.get('address'),e.get('seed'))
                self.bosses[key]={'address':e.get('address'),'seed':e.get('seed'),
                    'type':e.get('type'),'variant':e.get('variant',0),'last_alive_frame':frame}
        elif self.bosses and room==self.boss_room and snapshot.get('room_clear') is True:
            if self.clear_since is None:self.clear_since=frame
            if frame-self.clear_since>=15 and self.control_frames>0 and not self.failures:
                self.completed=True
        else:self.clear_since=None
        return self.result()

    def result(self):
        return {'objective':'hard_mode_initial_floor_boss_no_damage',
                'first_floor_boss_defeated_no_damage':self.completed,
                'official_multiplayer_verified':bool(self.completed and self.all_online),
                'initial_stage':self.initial_stage,'local_player_identity':self.identity,
                'boss_room':self.boss_room,'bosses_seen':list(self.bosses.values()),
                'native_clear_since_frame':self.clear_since,'observed_frames':self.frames,
                'maximum_observation_gap_frames':self.max_gap,
                'control_frames':self.control_frames,'damage_observed':self.damage_seen,
                'failures':list(self.failures)}
