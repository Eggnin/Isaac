"""Export the bounded Eye model supported by native collision and AI-angle evidence."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sources = [
    "validation/phase4-native-geometry-suite-20261029/native-oracle-analysis.json",
    "validation/phase4-oracle-output-calibration-20261029/native-oracle-analysis.json",
    "validation/phase4-native-brim-left-20261029/native-oracle-analysis.json",
]
results = []
for source in sources:
    results += json.loads((ROOT / source).read_text(encoding="utf-8"))["results"]
samples = sum(r["native_geometry_samples"] for r in results)
matches = sum(r["native_geometry_matches"] for r in results)
assert samples > 1000 and samples == matches
assert sum(r["positive_collisions"] for r in results) > 20
assert sum(r["negative_collisions"] for r in results) > 20
eye = [r for r in results if r["eye_angle_samples"]]
assert len({r["seed"] for r in eye}) >= 2
assert max(r["eye_max_axis_error"] for r in eye) < 1e-6
assert max(r["eye_max_origin_error"] for r in eye) < 1
windows = [w for r in eye for w in r["closed_laser_windows"] if w["source"] == "60.0.0"]
assert len(windows) >= 20
assert {(w["start_offset"], w["active_span"]) for w in windows} == {(0, 1)}
model = {
    "60.0.0:8:Shoot": {
        "model": "ai_angle_room_ray", "angle_field": "ai_v1.x", "angle_unit": "degrees",
        "origin_offset": 15, "native_half_width": 5, "geometry_margin": 1,
        "active_frames": 1, "active_offset_from_spawn": 0,
        "planning_validated": True,
        "range_scope": "Conservative ray across the room diagonal; native beam stops earlier at its endpoint",
        "margin_scope": "1 world unit positional envelope, not physical collision radius",
        "evidence": {"native_samples": samples, "native_matches": matches,
                     "eye_axis_samples": sum(r["eye_angle_samples"] for r in eye),
                     "max_axis_error": max(r["eye_max_axis_error"] for r in eye),
                     "max_origin_error": max(r["eye_max_origin_error"] for r in eye),
                     "closed_eye_windows": len(windows), "sources": sources,
                     "static_ai": "research/ai-recovery/ghidra-export/AI_00522ef0_00522ef0.c",
                     "constants": "0xBAA7A4=6.0, 0xBAA6BC=2.5, 0xBAA088=degrees-to-radians"},
    }
}
output = {"game_sha256": "7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F", "models": model}
path = ROOT / "data/mechanisms/gamebot_phase4_geometry.json"
path.write_text(json.dumps(output, indent=2) + "\n", encoding="utf-8")
print(json.dumps(output, indent=2))
