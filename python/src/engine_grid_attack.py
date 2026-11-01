"""Ordinary tears may clear an observed brown-poop barrier to a combat target."""
import math
import numpy as np
from shot_geometry import body_blocks_segment


def ordinary_poop_candidates(snapshot,player,profile):
    """Only observed, harmless tear-breakable barriers; never rocks or TNT."""
    weapons=[w for w in profile.get('weapons',[]) if w.get('owner')=='player']
    if (snapshot.get('room_clear') is not False or player.get('tear_flags')!=0 or
        not profile.get('can_shoot') or not weapons or any(w.get('type')!=1 for w in weapons) or
        profile.get('companions') or any(c.get('type')==12 for c in snapshot.get('grid_cells',[]))):return []
    width=snapshot.get('grid_width') or 15
    return [{'index':c['index'],'x':40+c['index']%width*40,'y':120+c['index']//width*40,
             'grid_type':14,'variant':0,'radius':18} for c in snapshot.get('grid_cells',[])
            if c.get('type')==14 and c.get('variant')==0 and c.get('collision')==3 and c.get('index',-1)>=0]


def barrier_firing_goal(nav,start,policies,candidates,enemies):
    """Navigate to the observed barrier's near face, on unchanged real terrain.

    A private ray mask permits the shot endpoint inside this one poop cell.
    It is never installed as a world movement mask or claimed as destroyed.
    """
    from planner import Body
    best=None;start_field=nav.from_start(start).ravel()
    for cell in candidates:
        body=Body(-cell['index']-1,cell['x'],cell['y'],0.,0.,cell['radius'],'target')
        shot_policies=[]
        for policy in policies:
            mask=policy['mask']
            if mask is not None:
                key=(id(mask),cell['index'])
                if key not in nav.barrier_masks:
                    ray_mask=mask.copy();x,y=cell['x'],cell['y']
                    ray_mask[max(0,y-20):min(mask.shape[0],y+20),max(0,x-20):min(mask.shape[1],x+20)]=True
                    nav.barrier_masks[key]=ray_mask
                mask=nav.barrier_masks[key]
            shot_policies.append({**policy,'mask':mask})
        lanes=nav.seeds(body,shot_policies)
        distance=float(start_field[lanes].min()) if len(lanes) else math.inf
        if not math.isfinite(distance):continue
        remaining=min((math.dist((body.x,body.y),(e.x,e.y)) for e in enemies),default=0.)
        score=distance+remaining*.25
        if best is None or score<best[0]:best=(score,body,lanes,cell,distance)
    return best


def blocking_poop_shot(snapshot,player,profile,world,decision,search,*,aim=None):
    routes=search.get('target_routes') or []
    if not routes or any(r.get('reachable') for r in routes):return None
    if snapshot.get('room_clear') is not False or player.get('tear_flags')!=0:return None
    weapons=[w for w in profile.get('weapons',[]) if w.get('owner')=='player']
    if not weapons or any(w.get('type')!=1 for w in weapons) or profile.get('companions'):return None
    if not profile.get('can_shoot'):return None
    cells=snapshot.get('grid_cells',[])
    if any(c.get('type')==12 for c in cells):return None # do not open a TNT firing lane
    cells={c['index']:c for c in cells};width=snapshot.get('grid_width') or 15
    mask=world['shot_walkable'];range_=profile.get('attack_range',0.)
    position=decision.path[0] if decision.path else world['player_position']
    objective=search.get('grid_objective')
    targets=([objective] if objective else [t for t in world.get('targets',[]) if t.get('address')==decision.target])
    for target in targets:
        for direction,(ux,uy) in {'right':(1,0),'down':(0,1),'left':(-1,0),'up':(0,-1)}.items():
            dx=target['x']-position[0];dy=target['y']-position[1]
            along=dx*ux+dy*uy;cross=abs(dx*uy-dy*ux)
            if not 10<along<=range_ or cross>target.get('radius',8)+2:continue
            if objective:
                from shot_geometry import shot_intersections
                channel={'speed':profile['projectile_speed'],'range':range_,'eye':True,'radius':2}
                coefficient=float(np.median(aim.inheritance)) if aim is not None and len(aim.inheritance)>=6 else 0.
                hit,_,_,_,_=shot_intersections(channel,[position],target,(ux,uy),
                    velocity=(player.get('vx',0.),player.get('vy',0.)),inheritance=coefficient,
                    eye_side=-(aim.eye or 0) if aim is not None and aim.eye_streak>=2 else 0)
                if not hit[0]:continue
            for distance in range(12,math.ceil(along)+1,3):
                x=position[0]+ux*distance;y=position[1]+uy*distance
                ix,iy=round(x),round(y)
                if not(0<=iy<mask.shape[0] and 0<=ix<mask.shape[1]):break
                if mask[iy,ix]:continue
                col=math.floor((x-20)/40);row=math.floor((y-100)/40)
                cell=cells.get(row*width+col,{})
                if cell.get('type')==14 and cell.get('variant')==0 and cell.get('collision')==3:
                    if objective and cell['index']!=objective['index']:break
                    if body_blocks_segment(position,(x,y),world.get('shot_blockers',()),2):break
                    return {'direction':direction,'grid_index':cell['index'],'grid_type':14,
                            'reason':'observed_brown_poop_clearance_attempt' if objective else 'brown_poop_blocks_combat_target'}
                break # first obstruction must be the observed destructible cell
    return None
