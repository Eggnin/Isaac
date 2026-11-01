import unittest

from first_floor_goal import FirstFloorBossAudit


def snapshot(frame=30,*,boss=True,clear=False,online=False,**changes):
    player={'address':10,'seed':90,'controller_index':4,'damage_cooldown':0,
            'health_parts':{'red':6,'soul':0,'bone':0}}
    s={'frame':frame,'difficulty':1,'level_stage':1,'room_index':71,
       'room_config':{'type':5},'room_clear':clear,'players':[player],
       'entities':[{'address':20,'seed':91,'type':20,'variant':0,'is_boss':True,'health':250.}] if boss else [],
       'locality':{'method':'offline_keyboard_controller','local_controller_indices':[4]}}
    if online:
        s['players'].append({'address':11,'controller_index':3})
        s['locality']['method']='native_net_input_ownership'
    s.update(changes)
    return s,player


class FirstFloorGoalTests(unittest.TestCase):
    def audit(self):return FirstFloorBossAudit(startup_verified=True)

    def finish(self,audit,*,online=False):
        for frame in (40,55):
            s,p=snapshot(frame,boss=False,clear=True,online=online)
            result=audit.observe(s,p,controlled=True)
        return result

    def test_actual_boss_seen_then_native_clear_and_stable_no_damage_completes_offline_milestone(self):
        audit=self.audit();audit.observe(*snapshot(),controlled=True)
        result=self.finish(audit)
        self.assertTrue(result['first_floor_boss_defeated_no_damage'])
        self.assertFalse(result['official_multiplayer_verified'])

    def test_clear_room_without_observed_boss_never_counts_as_defeat(self):
        audit=self.audit()
        self.assertFalse(self.finish(audit)['first_floor_boss_defeated_no_damage'])

    def test_disappearance_without_native_clear_never_counts_as_defeat(self):
        audit=self.audit();audit.observe(*snapshot(),controlled=True)
        for f in (40,55):audit.observe(*snapshot(f,boss=False),controlled=True)
        self.assertFalse(audit.completed)

    def test_any_actual_damage_invalidates_later_clear(self):
        audit=self.audit();s,p=snapshot();p['damage_cooldown']=60
        audit.observe(s,p,controlled=True)
        self.assertFalse(self.finish(audit)['first_floor_boss_defeated_no_damage'])
        self.assertTrue(audit.damage_seen)

    def test_online_proof_requires_multiple_players_and_native_ownership_throughout(self):
        audit=self.audit();audit.observe(*snapshot(online=True),controlled=True)
        self.assertTrue(self.finish(audit,online=True)['official_multiplayer_verified'])
        audit=self.audit();audit.observe(*snapshot(),controlled=True)
        self.assertFalse(self.finish(audit,online=True)['official_multiplayer_verified'])

    def test_difficulty_change_or_identity_change_prevents_success(self):
        for change in ('difficulty','identity'):
            with self.subTest(change=change):
                audit=self.audit();s,p=snapshot()
                if change=='difficulty':s['difficulty']=0
                else:p['seed']=92
                audit.observe(s,p,controlled=True)
                self.assertFalse(self.finish(audit)['first_floor_boss_defeated_no_damage'])

    def test_unverified_start_and_later_damage_cannot_reuse_a_success(self):
        audit=FirstFloorBossAudit();audit.observe(*snapshot(),controlled=True)
        self.assertFalse(self.finish(audit)['first_floor_boss_defeated_no_damage'])
        audit=self.audit();audit.observe(*snapshot(),controlled=True);self.finish(audit)
        s,p=snapshot(60,boss=False,clear=True);p['damage_cooldown']=30
        self.assertFalse(audit.observe(s,p)['first_floor_boss_defeated_no_damage'])

    def test_missing_health_or_long_observation_gap_cannot_prove_no_damage(self):
        audit=self.audit();s,p=snapshot();p['health_parts']={}
        audit.observe(s,p,controlled=True)
        self.assertIn('health_observation_missing',audit.failures)
        audit=self.audit();audit.observe(*snapshot(),controlled=True)
        s,p=snapshot(80,boss=False,clear=True);audit.observe(s,p,controlled=True)
        self.assertIn('observation_gap_exceeded',audit.failures)
        self.assertFalse(audit.completed)

    def test_transition_frames_still_observe_actual_damage(self):
        audit=self.audit();s,p=snapshot(transitional=True);p['damage_cooldown']=60
        audit.observe(s,p,controlled=True)
        self.assertIn('damage_observed',audit.failures)


if __name__=='__main__':unittest.main()
