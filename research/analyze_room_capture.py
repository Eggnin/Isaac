"""Separate actual runs/rooms in an original-engine observation capture."""
from collections import Counter
import json
from pathlib import Path
import sys

source = Path(sys.argv[1])
rooms = {}
states, errors = Counter(), Counter()
run = 1
last_frame = None
for line in source.open(encoding='utf-8-sig'):
    row = json.loads(line)
    obs = row['observation']
    states[obs['state']] += 1
    if obs.get('error'):
        errors[obs['error']] += 1
    frame = obs.get('frame')
    if frame is None:
        continue
    if last_frame is not None and frame < last_frame:
        run += 1
    last_frame = frame
    game, room = obs.get('game'), obs.get('room')
    if not game or not room:
        continue
    key = f"{run}:{game.get('stage')}:{game.get('stageType')}:{game.get('roomIndex')}:{room['pointer']}"
    rec = rooms.setdefault(key, dict(key=key, first_frame=frame, last_frame=frame,
        combat_seen=False, first_combat_frame=None, cleared_frame=None, clear_health=None,
        died=False, peak_tears=0, peak_projectiles=0, npc_types=[], npc_hp_min={}, npc_hp_max={}))
    rec['last_frame'] = frame
    entities = [e for e in obs['entities'] if e.get('dead') is False and e.get('exists') is not False]
    npcs = [e for e in entities if e['kind'] == 'npc']
    rec['peak_tears'] = max(rec['peak_tears'], sum(e['type'] == 2 for e in entities))
    rec['peak_projectiles'] = max(rec['peak_projectiles'], sum(e['type'] in (7, 9) for e in entities))
    for e in npcs:
        identity = f"{e['type']}.{e['variant']}"
        if identity not in rec['npc_types']:
            rec['npc_types'].append(identity)
        hp = e.get('hp')
        if hp is not None:
            rec['npc_hp_min'][identity] = min(rec['npc_hp_min'].get(identity, hp), hp)
            rec['npc_hp_max'][identity] = max(rec['npc_hp_max'].get(identity, hp), hp)
    if obs.get('ready') and obs.get('cleared') is False and npcs:
        rec['combat_seen'] = True
        if rec['first_combat_frame'] is None:
            rec['first_combat_frame'] = frame
    if rec['combat_seen'] and obs.get('ready') and obs.get('cleared') is True and rec['cleared_frame'] is None:
        rec['cleared_frame'] = frame
        rec['clear_health'] = obs.get('player', {}).get('health')
        rec['clear_count'] = room.get('clearCount')
        rec['npc_at_clear'] = [{k: e.get(k) for k in ['address','type','variant','hp','dead','exists','active']} for e in obs['entities'] if e['kind'] == 'npc']
    rec['died'] |= obs.get('dead') is True

report = dict(source=str(source), runs=run, states=states, errors=errors,
              completed_rooms=[r for r in rooms.values() if r['cleared_frame'] is not None and (r['clear_health'] or 0) > 0],
              rooms=list(rooms.values()))
out = source.with_suffix('.analysis.json')
out.write_text(json.dumps(report, indent=2), encoding='utf-8')
print(json.dumps({k: report[k] for k in ['runs', 'states', 'errors', 'completed_rooms']}, indent=2))
