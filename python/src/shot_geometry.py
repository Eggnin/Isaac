"""Shared opaque-body shot test for firing and firing-position navigation."""
import math
import numpy as np


def shot_intersections(channel,origins,target,direction,*,velocity=(0.,0.),inheritance=0.,eye_side=0):
    """Shared launch/intercept geometry for aiming and stationary firing lanes.

    Origins are emitter positions before the ordinary tear's eye offset.
    Velocity is the player's instantaneous engine velocity in px/frame.
    Navigation explicitly evaluates a future stopped player (zero velocity).
    """
    origins=np.asarray(origins,dtype=float).reshape(-1,2).copy();ux,uy=direction
    if channel.get('eye'):
        origins+=np.array((ux*10+uy*eye_side*4,uy*10-ux*eye_side*4))
    delta=np.array((target['x'],target['y']))-origins
    drift=np.asarray(velocity)*30*inheritance if channel.get('eye') else np.zeros(2)
    shot=np.array((ux,uy))*channel['speed']+drift
    if channel.get('instantaneous'):
        along=delta[:,0]*ux+delta[:,1]*uy;cross=np.abs(delta[:,0]*uy-delta[:,1]*ux)
        times=np.zeros(len(origins));behind=along<=0;far=along>channel['range']
        points=np.broadcast_to((target['x'],target['y']),origins.shape).copy()
    else:
        relative=shot-np.array((target.get('vx',0),target.get('vy',0)))*30
        times=np.sum(delta*relative,axis=1)/max(1e-9,float(np.dot(relative,relative)))
        cross=np.linalg.norm(delta-times[:,None]*relative,axis=1)
        behind=times<=0;far=times*np.linalg.norm(shot)>channel['range']
        points=np.array((target['x'],target['y']))+times[:,None]*np.array((target.get('vx',0),target.get('vy',0)))*30
    tolerance=target.get('radius',8)+channel.get('radius',2)+(0 if channel.get('instantaneous') else channel.get('area_radius',0))
    hit=~behind&~far&(cross<=tolerance)
    reason=np.where(behind,'behind',np.where(far,'out_of_range','misaligned'))
    return hit,times,points,origins,reason


def lines_clear(mask, starts, ends):
    """Vectorized 3px ray samples, retaining each ray's scalar sample count.

    No hazard pruning or resolution reduction: rounding and bounds have the
    same semantics as the scalar reference. Starts themselves are excluded.
    """
    starts=np.asarray(starts,dtype=float).reshape(-1,2)
    ends=np.asarray(ends,dtype=float).reshape(-1,2)
    if not len(starts):return np.empty(0,dtype=bool)
    if mask is None:return np.ones(len(starts),dtype=bool)
    delta=ends-starts
    counts=np.maximum(1,np.ceil(np.hypot(delta[:,0],delta[:,1])/3)).astype(int)
    steps=np.arange(1,int(counts.max())+1)
    active=steps[None,:]<=counts[:,None]
    points=np.rint(starts[:,None,:]+delta[:,None,:]*steps[None,:,None]/counts[:,None,None]).astype(int)
    x,y=points[:,:,0],points[:,:,1]
    inside=(x>=0)&(x<mask.shape[1])&(y>=0)&(y<mask.shape[0])
    sampled=mask[np.clip(y,0,mask.shape[0]-1),np.clip(x,0,mask.shape[1]-1)]
    return np.all(~active|(inside&sampled),axis=1)


def channel_mask(channel,normal,spectral=None):
    if channel.get('grid_pass'):return None
    if channel.get('spectral') and spectral is not None:return spectral
    return normal


def shot_traits(kind,flags=0):
    # Vanilla resources/scripts/enums.lua: TEARFLAG(0) spectral, (1) piercing.
    # Keep intrinsic weapon exceptions separate from ordinary tear effects.
    return {'grid_pass':kind in (2,4,9),'spectral':bool(flags&1),
            'body_pass':kind in (2,3,4,9,10,13) or bool(flags&2)}


def body_blocks_segment(origin,point,blockers,shot_radius=2.):
    dx,dy=point[0]-origin[0],point[1]-origin[1]
    square=dx*dx+dy*dy
    if square<=1e-9:return False
    for body in blockers:
        projection=((body['x']-origin[0])*dx+(body['y']-origin[1])*dy)/square
        if 0<projection<1 and math.hypot(body['x']-origin[0]-dx*projection,
                body['y']-origin[1]-dy*projection)<body.get('radius',5)+shot_radius:
            return True
    return False
