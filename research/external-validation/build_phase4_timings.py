"""Promote only repeatable exact-identity animation-to-spawn timing observations."""
import json
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
REPORT = ROOT / "validation/phase4-final-20261029/report.json"
ASSERTIONS = REPORT.with_name("event-assertions.json")
report = json.loads(REPORT.read_text(encoding="utf-8"))
observations = json.loads(ASSERTIONS.read_text(encoding="utf-8"))
groups = defaultdict(list)
for case in observations["assertions"]:
    if case["policy"] != "phase4" or not case["spawn_assertion_pass"]:
        continue
    for row in case["laser_trigger_observations"]:
        if row["identity"] in ("60.0.0", "68.1.0", "203.0.0") and row["warning_lead"] > 0:
            groups[(row["identity"], row["state"], row["animation"])].append({**row, "seed": case["seed"]})
timings = {}
for (identity, state, animation), samples in groups.items():
    frames = {s["animation_frame"] for s in samples}
    seeds = {s["seed"] for s in samples}
    if len(seeds) < 2 or len(samples) < 4 or len(frames) != 1:
        continue
    timings[f"{identity}:{state}:{animation}"] = {
        "trigger_animation_frame": next(iter(frames)), "samples": len(samples),
        "seeds": sorted(seeds), "timing_verified": True, "planning_validated": False,
        "geometry_verified": False, "duration_verified": False,
        "evidence": "independent internal laser spawn aligned with external telegraph; two seeds",
        "source": "validation/phase4-final-20261029/event-assertions.json",
    }
output = {"game_sha256": report["provenance"]["source_exe_sha256"], "timings": timings,
          "scope": "Sampled exact identity/state/animation only; no geometry/duration or other variants inferred."}
path = ROOT / "data/mechanisms/gamebot_phase4_timing.json"
path.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
print(json.dumps(output, indent=2))
