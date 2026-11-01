"""Compare native laser collision decisions and attributed damage with observed geometry."""
import argparse
import json
import math
from pathlib import Path


def analyze(directory):
    report = json.loads((directory / "report.json").read_text(encoding="utf-8"))
    results = []
    for case in report["cases"]:
        if case["status"] != "executed":
            continue
        stem = f"{case['name']}-{case['seed'].replace(' ', '')}-{case['policy']}"
        path = directory / (stem + ".jsonl")
        samples, matches, positive, negative = 0, 0, 0, 0
        errors, damage_events, windows = [], [], {}
        own_damage, incoming_damage = 0, 0
        max_eye_angle_error, max_eye_origin_error, eye_samples = 0, 0, 0
        frame_count = 0

        def process(row):
            nonlocal samples, matches, positive, negative, own_damage, incoming_damage
            nonlocal max_eye_angle_error, max_eye_origin_error, eye_samples, frame_count
            truth = row["truth"]
            frame = truth["frame"]
            frame_count += 1
            members = {e["address"]: e for e in frame["entities"]}
            player = frame["player"]["body"]["address"]
            for e in members.values():
                if e["type"] != 7:
                    continue
                source = members.get(e.get("spawner")) or members.get(e.get("parent"))
                key = f"{e['address']}:{e['seed']}"
                window = windows.setdefault(key, {"first_seen": frame["clock"], "active_frames": [], "source": "Unknown"})
                window["last_seen"] = frame["clock"]
                if source:
                    window["source"] = f"{source['type']}.{source['variant']}.{source['subtype']}"
            events = truth.get("native_laser", [])
            applied = {(e["frame"], e["laser"], e["player"]) for e in events if e["kind"] == "collision-apply"}
            for e in events:
                window = windows.get(f"{e['laser']}:{e['seed']}")
                if window and e["kind"] == "eligibility":
                    window["active_frames"].append(e["frame"])
                # This call site is the straight-ray path in original Laser::Update.
                if e["kind"] != "eligibility" or not e["result"] or e["caller"] != 0x973116 or e["subtype"] != 0 or e["variant"] not in (1, 2):
                    continue
                dx, dy = e["endpoint"]["x"] - e["pos"]["x"], e["endpoint"]["y"] - e["pos"]["y"]
                length = math.hypot(dx, dy)
                if length <= 1:
                    continue
                rx, ry = e["player_pos"]["x"] - e["pos"]["x"], e["player_pos"]["y"] - e["pos"]["y"]
                along, perpendicular = (rx * dx + ry * dy) / length, abs(rx * dy - ry * dx) / length
                predicted = perpendicular < e["collision_radius"] + e["player_radius"] and 0 < along < e["field_460"]
                actual = (e["frame"], e["laser"], e["player"]) in applied
                samples += 1
                matches += predicted == actual
                positive += actual
                negative += not actual
                if predicted != actual:
                    errors.append({"event": e, "predicted": predicted, "native_collision": actual, "along": along, "perpendicular": perpendicular})
                laser = members.get(e["laser"])
                owner = (members.get(laser.get("spawner")) or members.get(laser.get("parent"))) if laser else None
                if owner and (owner["type"], owner["variant"], owner["subtype"], owner["state"]) == (60, 0, 0, 8):
                    angle = math.radians(owner["ai_v1"]["x"])
                    ax, ay = math.cos(angle), math.sin(angle)
                    max_eye_angle_error = max(max_eye_angle_error, math.hypot(ax - dx / length, ay - dy / length))
                    max_eye_origin_error = max(max_eye_origin_error, math.hypot(owner["pos"]["x"] + 15 * ax - e["pos"]["x"], owner["pos"]["y"] + 15 * ay - e["pos"]["y"]))
                    eye_samples += 1
            for event in truth.get("native_damage", []):
                damage = max(0, event["health_before"] - max(0, event["health_after"]))
                if event.get("target_type") == 1:
                    incoming_damage += damage
                    if damage:
                        damage_events.append({"frame": event["frame"], "amount": damage, "source_type": event["source_type"], "source_variant": event["source_variant"], "flags": event["flags_lo"], "laser": event.get("laser", 0)})
                elif event.get("native_entry") == 0x6d60a0 and event.get("target_seed") == event.get("target_seed_after") and (
                    event["source"] == player or event.get("source_parent") == player or event.get("source_spawner") == player
                ):
                    own_damage += damage

        with path.open(encoding="utf-8") as stream:
            for line in stream:
                process(json.loads(line))
        terminal = directory / (stem + "-terminal.json")
        if terminal.exists():
            process(json.loads(terminal.read_text(encoding="utf-8")))
        closed_windows = []
        for window in windows.values():
            active = sorted(set(window["active_frames"]))
            if active and window["last_seen"] < case["initial"]["frame"] + case["frames"]:
                closed_windows.append({**window, "active_frames": active, "active_span": active[-1] - active[0] + 1,
                                       "start_offset": active[0] - window["first_seen"]})
        results.append({"name": case["name"], "seed": case["seed"], "policy": case["policy"],
                        "native_geometry_samples": samples, "native_geometry_matches": matches,
                        "positive_collisions": positive, "negative_collisions": negative, "geometry_errors": errors,
                        "native_incoming_damage": incoming_damage, "observed_health_loss": case["damage"],
                        "damage_accounting_match": incoming_damage == case["damage"], "damage_events": damage_events,
                        "player_attributed_damage": own_damage, "enemy_hp_decline_any_source": case["enemy_damage_observed"],
                        "eye_angle_samples": eye_samples, "eye_max_axis_error": max_eye_angle_error,
                        "eye_max_origin_error": max_eye_origin_error, "closed_laser_windows": closed_windows})
    output = {"source_report": str(directory / "report.json"), "results": results,
              "geometry_scope": "Native straight-ray eligibility/apply call sites; original collision radius + player radius, open axial interval. Rounded capsule endcaps in Planner remain conservative.",
              "damage_scope": "Native Player::TakeDamage and Entity::TakeDamage pre/post HP; source/parent/spawner must equal local player for output credit."}
    (directory / "native-oracle-analysis.json").write_text(json.dumps(output, indent=2) + "\n", encoding="utf-8")
    return output


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("directory", type=Path)
    result = analyze(parser.parse_args().directory)
    print(json.dumps([{k: r[k] for k in ("name", "seed", "policy", "native_geometry_samples", "native_geometry_matches", "positive_collisions", "negative_collisions", "damage_accounting_match", "player_attributed_damage", "eye_max_axis_error", "eye_max_origin_error")} for r in result["results"]], indent=2))
