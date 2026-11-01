import unittest

from hard_run_route import HardRunRoute
from planner import Planner
from test_regressions_032 import normal_room


def door(slot=0,target=83,typ=1,collision=5,state=2):
    x,y=((40,280),(320,120),(600,280),(320,440))[slot%4]
    return {'slot':slot,'target_room_index':target,'target_room_type':typ,
            'collision':collision,'state':state,'x':x,'y':y}


class HardRoomRouteTests(unittest.TestCase):
    def test_no_hit_route_does_not_choose_sacrifice_or_closed_door(self):
        route=HardRunRoute()
        state={'level_stage':1,'room_index':84,'doors':[door(2,85,13),door(1,71,1,4),door()]}
        self.assertEqual(route.choose_door(state,(320,280))['target_room_index'],83)

    def test_backtracks_to_an_observed_frontier_instead_of_looping(self):
        route=HardRunRoute()
        route.choose_door({'level_stage':1,'room_index':84,'doors':[door(),door(1,71)]},(320,280))
        result=route.choose_door({'level_stage':1,'room_index':83,'doors':[door(2,84)]},(320,280))
        self.assertEqual(result['target_room_index'],84)

    def test_door_approach_uses_full_terrain_search_with_nine_held_routes(self):
        world=normal_room();route=HardRunRoute();planner=Planner()
        state={'difficulty':1,'level_stage':1,'room_index':84,'frame':20,'doors':[door()]}
        p={'stats':{'move_speed':1.}}
        result=route.decide(state,p,world,{},planner)
        self.assertEqual(result.move,(-1,0))
        self.assertIsNone(result.fire)
        self.assertEqual(planner._search.last_report['routes_preserved'],9)

    def test_verified_crossing_is_bounded_and_requires_a_player_passable_door(self):
        world=normal_room();world['player_position']=(80.,280.)
        route=HardRunRoute();planner=Planner();p={'stats':{'move_speed':1.}}
        state={'difficulty':1,'level_stage':1,'room_index':84,'frame':20,'doors':[door()]}
        self.assertEqual(route.decide(state,p,world,{},planner).move,(-1,0))
        state['frame']=51
        self.assertEqual(route.decide(state,p,world,{},planner).move,(0,0))
        self.assertEqual(route.last_report['status'],'door_transition_timeout')

    def test_observed_bottom_door_stall_moves_now_instead_of_delaying_forever(self):
        world=normal_room();world['player_position']=(320.,380.)
        route=HardRunRoute();planner=Planner();p={'stats':{'move_speed':1.}}
        state={'difficulty':1,'level_stage':1,'room_index':84,'frame':5411,'doors':[door(3,97)]}
        result=route.decide(state,p,world,{'velocity':(0.,0.)},planner)
        self.assertEqual(result.move,(0,1))
        self.assertEqual(planner._search.last_report['routes_preserved'],9)

    def test_native_near_door_alignment_does_not_postpone_the_first_movement(self):
        world=normal_room();world['player_position']=(337.0576171875,396.6295471191406)
        state={'difficulty':1,'level_stage':1,'room_index':69,'frame':2063,'doors':[door(3,82)]}
        route=HardRunRoute();planner=Planner()
        result=route.decide(state,{'stats':{'move_speed':1.}},world,
                            {'position_a':1.53826467,'position_b':.60466457},planner)
        self.assertEqual(result.move[0],-1)

    def test_observed_open_door_apron_aligns_and_crosses_outside_room_mask(self):
        world=normal_room();world['player_position']=(50.6744194,270.0007324)
        state={'difficulty':1,'level_stage':1,'room_index':84,'frame':156,'doors':[door()]}
        route=HardRunRoute()
        result=route.decide(state,{'stats':{'move_speed':1.}},world,{},Planner())
        self.assertEqual(result.move,(-1,1))
        self.assertEqual(route.last_report['status'],'crossing_verified_door')
        state['frame']=187
        self.assertEqual(route.decide(state,{'stats':{'move_speed':1.}},world,{},Planner()).move,(0,0))
        self.assertEqual(route.last_report['status'],'door_transition_timeout')

    def test_first_floor_objective_prefers_observed_boss_to_unneeded_normal_room(self):
        state={'level_stage':1,'room_index':84,'doors':[door(0,83),door(1,71,5)]}
        route=HardRunRoute(first_floor_boss=True)
        self.assertEqual(route.choose_door(state,(320,280))['target_room_type'],5)
        world=normal_room();state.update(difficulty=1,frame=20,room_config={'type':5},room_clear=True)
        result=route.decide(state,{'stats':{'move_speed':1.}},world,{},Planner())
        self.assertEqual(result.move,(0,0))
        self.assertEqual(route.last_report['status'],'boss_room_clear_hold')

    def test_clear_room_selects_free_collectible_before_leaving_and_keeps_paid_guard(self):
        pickup={'type':5,'variant':100,'subtype':1,'address':20,'seed':9,
                'x':240.,'y':280.,'pickup':{'price':0}}
        paid={**pickup,'address':21,'x':400.,'pickup':{'price':15}}
        state={'difficulty':1,'level_stage':1,'room_index':84,'frame':20,
               'grid_width':15,'grid_height':9,'doors':[door()], 'entities':[pickup,paid]}
        p={'x':320.,'y':280.,'radius':10.,'stats':{'move_speed':1.}}
        from engine_world import EngineWorld
        world=EngineWorld().update(state,p);route=HardRunRoute()
        route.decide(state,p,world,{},Planner())
        self.assertEqual(route.last_report['status'],'approaching_free_collectible')
        self.assertTrue(route.pickup_terrain._walkable[280,240])
        self.assertFalse(route.pickup_terrain._walkable[280,400])
        state.update(frame=111)
        self.assertEqual(route.decide(state,p,world,{},Planner()).move,(0,0))
        self.assertEqual(route.last_report['status'],'free_collectible_skipped')
        self.assertEqual(route.collected,[])
        self.assertEqual(route.skipped,[{'frame':111,'room':(1,84),'collectible':1,'reason':'collection_timeout'}])
        state['frame']=112
        route.decide(state,p,world,{},Planner())
        self.assertEqual(route.last_report['status'],'approaching_door')
        # Skipping is not a receipt and does not remove the pedestal guard.
        self.assertFalse(world['walkable'][280,240])

    def test_inventory_receipt_finishes_active_swap_without_taking_dropped_item_back(self):
        item={'type':5,'variant':100,'subtype':352,'address':20,'seed':9,
              'x':320.,'y':280.,'pickup':{'price':0}}
        state={'difficulty':1,'level_stage':1,'room_index':83,'frame':20,
               'grid_width':15,'grid_height':9,'doors':[door(2,84)],'entities':[item]}
        p={'x':360.,'y':280.,'radius':10.,'stats':{'move_speed':1.},'collectibles':{'105':1}}
        from engine_world import EngineWorld
        route=HardRunRoute();planner=Planner();world=EngineWorld().update(state,p)
        route.decide(state,p,world,{},planner)
        p['collectibles']={'352':1};item['subtype']=105;state['frame']=21
        route.decide(state,p,world,{},planner)
        self.assertEqual(route.last_report['status'],'approaching_door')
        self.assertEqual(route.collected,[{'frame':21,'room':(1,83),'collectible':352}])


if __name__=='__main__':unittest.main()
