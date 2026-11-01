"""Screen-space perception. No engine state, memory reads, or game callbacks."""
from __future__ import annotations

from dataclasses import dataclass
import math
from pathlib import Path
import sys

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent / 'vendor'))
if not (Path(__file__).resolve().parent / 'vendor/cv2').exists():
    sys.path.insert(0, r'D:\IsaacAccessAssist\vendor')
import cv2

from planner import Body

WIDTH = 640


def normalize(frame):
    return cv2.resize(frame, (WIDTH, round(frame.shape[0] * WIDTH / frame.shape[1])),
                      interpolation=cv2.INTER_AREA)


class PlayerTracker:
    """A user-selected local template bank; never globally switches to a teammate."""
    def __init__(self):
        self.bank = []
        self.position = None
        self.velocity = np.zeros(2, np.float32)
        self.confidence = 0.
        self.misses = 0
        self.tick = 0

    def select(self, frame, point):
        x, y = map(int, point)  # User points at the character's feet/shadow.
        h, w = frame.shape[:2]
        if not 18 <= x < w - 18 or not 32 <= y < h - 5:
            raise ValueError('请点击角色脚下，远离画面边缘')
        patch = frame[y-30:y+4, x-16:x+17].copy()
        gray = cv2.cvtColor(patch, cv2.COLOR_BGR2GRAY)
        if gray.std() < 8:
            raise ValueError('选区没有足够的角色特征，请重新点击角色脚下')
        self.bank = [gray]
        self.position = np.array((float(x), float(y)), np.float32)
        self.velocity[:] = 0
        self.confidence = 1.
        self.misses = 0
        self.tick = 0

    def update(self, frame, dt):
        if self.position is None or not self.bank or self.misses > 5:
            return None
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        px, py = self.position + self.velocity * min(dt, .1)
        margin = min(70, 24 + 8 * self.misses)
        x0, y0 = max(0, int(px - margin - 16)), max(0, int(py - margin - 30))
        x1, y1 = min(gray.shape[1], int(px + margin + 17)), min(gray.shape[0], int(py + margin + 4))
        search = gray[y0:y1, x0:x1]
        best = (-1., None)
        for template in self.bank:
            if search.shape[0] < template.shape[0] or search.shape[1] < template.shape[1]:
                continue
            scores = cv2.matchTemplate(search, template, cv2.TM_CCOEFF_NORMED)
            _, score, _, loc = cv2.minMaxLoc(scores)
            if score > best[0]:
                best = (score, (float(x0 + loc[0] + 16), float(y0 + loc[1] + 30)))
        self.confidence = best[0]
        if best[0] < .68:
            self.misses += 1
            return None
        pos = np.array(best[1], np.float32)
        # No long extrapolation during occlusion: missing self means release input.
        measured = (pos - self.position) / max(.01, dt)
        self.velocity = .6 * self.velocity + .4 * np.clip(measured, -450, 450)
        self.position = pos
        self.misses = 0
        self.tick += 1
        if best[0] > .88 and self.tick % 12 == 0:
            x, y = map(int, pos)
            patch = gray[y-30:y+4, x-16:x+17]
            if patch.shape == self.bank[0].shape:
                self.bank.append(patch.copy())
                self.bank = self.bank[-8:]
        return tuple(float(v) for v in pos)


@dataclass
class Track:
    id: int
    x: float
    y: float
    vx: float
    vy: float
    radius: float
    kind: str
    age: int = 1
    missing: int = 0


class Perception:
    def __init__(self):
        self.self_tracker = PlayerTracker()
        self.friends = []
        self.blockers = []
        self.bounds = None
        self.walkable = None
        self.previous = None
        self.background = None
        self.tracks = []
        self.next_id = 1
        self.frame_count = 0
        self.scene_changed = False
        self.floor_color = None
        self.reason = '请先标记自己的角色脚下'
        self.map_due = True
        self.own_shots = []

    def reset_scene(self):
        self.background = cv2.createBackgroundSubtractorMOG2(history=900, varThreshold=36, detectShadows=False)
        self.previous = None
        self.tracks = []
        self.frame_count = 0
        self.friends = []
        self.blockers = []
        self.floor_color = None
        self.walkable = None
        self.map_due = True
        self.own_shots = []

    def select_self(self, frame, point):
        self.reset_scene()
        self.self_tracker = PlayerTracker()
        self.self_tracker.select(frame, point)
        self.reason = '已标记自己；先观察识别框，再按 F6 启用'

    def add_friend(self, frame, point):
        friend = PlayerTracker()
        friend.select(frame, point)
        self.friends.append(friend)

    def set_bounds(self, rect):
        x0, y0, x1, y1 = rect
        if x1 - x0 < 70 or y1 - y0 < 70:
            raise ValueError('房间范围太小，请框选地面内部')
        self.bounds = tuple(map(int, rect))
        self.map_due = True

    def add_blocker(self, rect):
        self.blockers.append(tuple(map(int, rect)))
        self.map_due = True

    def note_fire(self, direction, player):
        if direction:
            self.own_shots.append((self.frame_count, direction, player))
        self.own_shots = [s for s in self.own_shots if self.frame_count - s[0] < 8]

    def _terrain(self, frame, player):
        """Estimate floor from a ring around the selected character, plus explicit exclusions."""
        h, w = frame.shape[:2]
        if self.bounds is None:
            bounds = (round(.065*w), round(.22*h), round(.935*w), round(.89*h))
        else:
            bounds = self.bounds
        x0, y0, x1, y1 = bounds
        interior = np.zeros((h, w), np.uint8)
        interior[max(0,y0):min(h,y1), max(0,x0):min(w,x1)] = 1
        lab = cv2.cvtColor(frame, cv2.COLOR_BGR2LAB).astype(np.float32)
        if self.floor_color is None:
            yy, xx = np.ogrid[:h,:w]
            distances = (xx-player[0])**2 + (yy-player[1])**2
            ring = (distances > 24**2) & (distances < 44**2) & interior.astype(bool)
            sample = lab[ring]
            if len(sample) < 40:
                self.reason = '角色太靠边，无法估计地面；请框选房间范围'
                return interior.astype(bool)
            # Mode in quantized Lab rejects a few nearby sprites and drops.
            codes = (sample[:,0]//24)*256 + (sample[:,1]//16)*16 + sample[:,2]//16
            code = np.unique(codes, return_counts=True)
            chosen = sample[codes == code[0][np.argmax(code[1])]]
            self.floor_color = np.median(chosen, axis=0)
        diff = lab - self.floor_color
        allowed = ((diff[:,:,0] > -64) & (diff[:,:,0] < 70) &
                   (np.abs(diff[:,:,1]) < 24) & (np.abs(diff[:,:,2]) < 26)).astype(np.uint8)
        allowed = cv2.morphologyEx(allowed, cv2.MORPH_CLOSE, np.ones((5,5),np.uint8))
        allowed *= interior
        # Moving sprites belong in dynamic prediction, not in the terrain map.
        px,py = map(int,player)
        allowed[max(0,py-35):min(h,py+15),max(0,px-21):min(w,px+22)] = 1
        for track in self.tracks:
            tx,ty = round(track.x),round(track.y)
            if track.kind == 'enemy':
                cv2.rectangle(allowed,(tx-25,ty-38),(tx+25,ty+16),1,-1)
        for friend in self.friends:
            if friend.position is not None:
                fx,fy = map(int,friend.position)
                allowed[max(0,fy-35):min(h,fy+15),max(0,fx-21):min(w,fx+22)] = 1
        allowed *= interior
        for ax, ay, bx, by in self.blockers:
            allowed[max(0,ay):min(h,by),max(0,ax):min(w,bx)] = 0
        return allowed.astype(bool)

    @staticmethod
    def _exclude_character(mask, point):
        x,y = map(int, point)
        cv2.ellipse(mask, (x,y-12), (20,25), 0, 0, 360, 0, -1)

    def _associate(self, detections, dt, player):
        pairs = []
        for i, track in enumerate(self.tracks):
            for j, (x,y,r,kind) in enumerate(detections):
                if track.kind == 'projectile' and kind == 'enemy':
                    continue
                dx = x-(track.x+track.vx*dt)
                dy = y-(track.y+track.vy*dt)
                gate = 20 + max(r,track.radius) + 380*dt
                distance = dx*dx+dy*dy
                if distance < gate*gate:
                    pairs.append((distance,i,j))
        used_tracks, used_detections = set(), set()
        new = []
        for _,i,j in sorted(pairs):
            if i in used_tracks or j in used_detections:
                continue
            used_tracks.add(i);used_detections.add(j)
            t = self.tracks[i]
            x,y,r,kind = detections[j]
            blend = .6 if t.age > 2 else 1.
            t.vx = (1-blend)*t.vx+blend*np.clip((x-t.x)/dt,-600,600)
            t.vy = (1-blend)*t.vy+blend*np.clip((y-t.y)/dt,-600,600)
            t.x,t.y,t.radius = x,y,r
            if t.kind not in ('friendly','possible_friendly'):
                t.kind = kind
            t.age += 1;t.missing = 0
            new.append(t)
        for j,(x,y,r,kind) in enumerate(detections):
            if j in used_detections:
                continue
            # A small shot must originate near the controlled firing point and
            # travel in the emitted direction before it is marked friendly.
            for _,direction,(sx,sy) in self.own_shots:
                dx,dy = x-sx,y-(sy-10)
                ux,uy = {'up':(0,-1),'down':(0,1),'left':(-1,0),'right':(1,0)}[direction]
                if r < 8 and 2 < dx*ux+dy*uy < 32 and abs(dx*uy-dy*ux) < 7:
                    # Remains a hazard until motion confirms origin next frame.
                    kind = 'possible_friendly'
                    break
            new.append(Track(self.next_id,x,y,0.,0.,r,kind))
            self.next_id += 1
        for i,t in enumerate(self.tracks):
            if i not in used_tracks and t.missing < 3 and t.kind != 'friendly':
                t.x += t.vx*dt;t.y += t.vy*dt;t.missing += 1
                new.append(t)
        for t in new:
            if t.kind == 'possible_friendly' and t.age > 1:
                confirmed = False
                for _,direction,(sx,sy) in self.own_shots:
                    ux,uy = {'up':(0,-1),'down':(0,1),'left':(-1,0),'right':(1,0)}[direction]
                    if t.vx*ux+t.vy*uy > 60 and abs((t.x-sx)*uy-(t.y-(sy-10))*ux) < 10:
                        confirmed = True
                t.kind = 'friendly' if confirmed else 'projectile'
        self.tracks = new
        return [Body(t.id,t.x,t.y,t.vx,t.vy,t.radius,
                     'projectile' if t.kind == 'possible_friendly' else t.kind)
                for t in new if t.age >= 2 and t.kind != 'friendly']

    def update(self, frame, dt):
        self.scene_changed = False
        if frame.ndim != 3 or frame.shape[2] != 3 or frame.std() < 4 or np.mean(frame < 10) > .99:
            self.reason = '画面不可用或黑屏：请使用窗口化／无边框窗口'
            return None, []
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        if self.previous is not None and gray.shape == self.previous.shape:
            changed = np.mean(cv2.absdiff(gray,self.previous) > 45)
            if changed > .63:
                self.scene_changed = True
                self.self_tracker = PlayerTracker()
                self.reset_scene()
                self.reason = '画面大幅变化，已停止；进入房间后重新标记自己'
                return None, []
        self.previous = gray.copy()
        player = self.self_tracker.update(frame,dt)
        if player is None:
            self.reason = '未可靠定位自己，已释放按键；按 F8 或在预览中重新标记'
            return None, []
        if self.background is None:
            self.background = cv2.createBackgroundSubtractorMOG2(history=900,varThreshold=36,detectShadows=False)
        fg = self.background.apply(frame,learningRate=.003 if self.frame_count > 16 else .25)
        self.frame_count += 1
        if self.map_due or self.walkable is None or self.frame_count % 18 == 0:
            self.walkable = self._terrain(frame,player)
            self.map_due = False
        # Floor classification under a moving player must not leave its old body
        # silhouette marked as a wall; update terrain only from stationary learning.
        region = np.zeros(gray.shape,np.uint8)
        h,w = gray.shape
        x0,y0,x1,y1 = self.bounds or (round(.065*w),round(.22*h),round(.935*w),round(.89*h))
        region[max(0,y0):min(h,y1),max(0,x0):min(w,x1)] = 255
        fg &= region
        self._exclude_character(fg,player)
        for friend in self.friends:
            point = friend.update(frame,dt)
            if point is None:
                self.reason = '队友定位丢失，已停止，避免误把队友当敌人'
                return None, []
            self._exclude_character(fg,point)
        # Red/orange projectiles remain visible even when nearly stationary.
        hsv = cv2.cvtColor(frame,cv2.COLOR_BGR2HSV)
        red = (((hsv[:,:,0] < 13) | (hsv[:,:,0] > 170)) &
               (hsv[:,:,1] > 135) & (hsv[:,:,2] > 105)).astype(np.uint8)*255
        red &= region
        self._exclude_character(red,player)
        for friend in self.friends:
            self._exclude_character(red,friend.position)
        mask = cv2.morphologyEx(fg,cv2.MORPH_OPEN,np.ones((2,2),np.uint8))
        mask |= red
        count,labels,stats,centers = cv2.connectedComponentsWithStats(mask,8)
        detections = []
        for index in range(1,count):
            x,y,bw,bh,area = stats[index]
            if area < 5 or area > w*h*.14 or bw > w*.6 or bh > h*.6:
                continue
            cx,cy = centers[index]
            red_count = np.count_nonzero(red[y:y+bh,x:x+bw] & (labels[y:y+bh,x:x+bw] == index))
            small = max(bw,bh) < 20
            if max(bw,bh) > 65 and min(bw,bh) < 15 and red_count > area*.35:
                # Model an observed beam as a chain rather than one huge disk.
                for offset in range(0,max(bw,bh),10):
                    bx = x+offset if bw>bh else cx
                    by = cy if bw>bh else y+offset
                    detections.append((float(bx),float(by),8.,'projectile'))
                continue
            kind = 'projectile' if small or (red_count > area*.45 and max(bw,bh)<30) else 'enemy'
            radius = float(np.clip(min(bw,bh)*.38,3,30))
            # Sprite center -> approximate ground collision position.
            if kind == 'enemy':
                cy = y+bh*.80
            detections.append((float(cx),float(cy),radius,kind))
        bodies = self._associate(detections,max(.01,min(.15,dt)),player)
        if self.frame_count < 18:
            self.reason = '正在建立画面背景，请稍候'
            return player, []
        self.reason = '视觉跟踪中；识别框仅为画面估计'
        return player,bodies

    def draw(self, frame, player, bodies, path=None):
        out = frame.copy()
        if self.walkable is not None and self.walkable.shape == out.shape[:2]:
            blocked = ~self.walkable
            tint = out.copy()
            tint[blocked] = (.35*tint[blocked]+.65*np.array((55,40,135))).astype(np.uint8)
            out = cv2.addWeighted(out,.68,tint,.32,0)
        if player:
            cv2.circle(out,tuple(map(int,player)),10,(110,240,160),2)
        for b in bodies:
            color = (80,100,255) if b.kind == 'projectile' else (50,210,255)
            cv2.circle(out,(round(b.x),round(b.y)),max(3,round(b.radius)),color,1)
            cv2.line(out,(round(b.x),round(b.y)),(round(b.x+b.vx*.2),round(b.y+b.vy*.2)),color,1)
        if path and len(path)>1:
            cv2.polylines(out,[np.array(path,np.int32)],False,(210,235,110),1)
        for rect in self.blockers:
            ax,ay,bx,by = rect
            cv2.rectangle(out,(ax,ay),(bx,by),(120,90,255),2)
        return out
