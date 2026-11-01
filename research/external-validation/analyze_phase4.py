"""Independent post-run assertions on saved internal truth and external event logs."""
import argparse
import json
from pathlib import Path


def analyze(directory):
    report = json.loads((directory / "report.json").read_text(encoding="utf-8"))
    assertions = []
    for case in report["cases"]:
        name, seed, policy = case["name"], case["seed"], case["policy"]
        path = directory / f"{name}-{seed.replace(' ', '')}-{policy}.jsonl"
        if not path.exists():
            continue
        states = {}
        rage = []
        decrements, timer_samples, spawn_matches, spawn_predictions = 0, 0, 0, 0
        timer_frozen, timer_extended = 0, []
        previous = {}
        mechanisms = set()
        timing = []
        trigger_observations = []
        with path.open(encoding="utf-8") as stream:
            for line in stream:
                row = json.loads(line)
                truth = row["truth"]["frame"]
                entities = {e["address"]: e for e in truth["entities"]}
                events = row["external"]["mechanisms"]["events"]
                for event in events:
                    if event["event"] == "AttackStart":
                        spawn_predictions += 1
                        entity = entities.get(event["parameters"]["entity"])
                        old = previous.get(event["parameters"]["entity"])
                        if entity and entity["seed"] == event["seed"] and (
                            old is None or old["seed"] != entity["seed"]
                        ) and entity["type"] in (7, 9):
                            spawn_matches += 1
                for attack in row["attackEvents"]:
                    warning = attack.get("warning")
                    if warning:
                        if warning["predicted"] >= 0:
                            timing.append(attack["frame"] - warning["predicted"])
                        source = entities.get(attack["source"])
                        if source and attack["type"] == 7:
                            trigger_observations.append({"identity": f"{source['type']}.{source['variant']}.{source['subtype']}",
                                                         "animation": source["animation"], "state": source["state"],
                                                         "animation_frame": source["animation_frame"], "frame": attack["frame"],
                                                         "warning_lead": attack["frame"] - warning["frame"]})
                        if source:
                            mechanisms.add(f"{source['type']}.{source['variant']}.{source['subtype']}")
                for address, entity in entities.items():
                    if (entity["type"], entity["variant"], entity["subtype"]) != (413, 0, 0):
                        continue
                    signature = (entity["seed"], entity["state"], entity["animation"])
                    if states.get(address) != signature and entity["animation"].startswith("Rage"):
                        matching = [e for e in events if e["source"] == address and e["phase"] == entity["animation"]]
                        rage.append({"frame": truth["clock"], "state": entity["state"],
                                     "animation": entity["animation"], "ai_i1": entity["ai_i1"],
                                     "ai_i2": entity["ai_i2"], "state_frame": entity["state_frame"],
                                     "external_event_matched": bool(matching)})
                    states[address] = signature
                    old = previous.get(address)
                    if old and old["seed"] == entity["seed"] and old["state"] == entity["state"] == 13 and old["ai_i1"] > 2:
                        timer_samples += 1
                        delta = old["ai_i1"] - entity["ai_i1"]
                        decrements += delta == 2
                        timer_frozen += delta == 0
                        if delta < 0:
                            timer_extended.append({"frame": truth["clock"], "increase": -delta, "animation": entity["animation"]})
                previous = entities
        phases = {r["animation"] for r in rage}
        assertions.append({"name": name, "seed": seed, "policy": policy,
                           "spawn_predictions": spawn_predictions, "spawn_matches": spawn_matches,
                           "spawn_assertion_pass": spawn_predictions > 0 and spawn_predictions == spawn_matches,
                           "warning_sources_with_attack": sorted(mechanisms),
                           "prediction_errors": sorted(set(timing)),
                           "laser_trigger_observations": trigger_observations,
                           "rage_transitions": rage,
                           "rage_complete": {"RageBegin", "RageLoop", "RageEnd"} <= phases,
                           "rage_external_events_match": bool(rage) and all(r["external_event_matched"] for r in rage),
                           "rage_timer_samples": timer_samples, "rage_timer_decrement_matches": decrements,
                           "rage_timer_frozen_samples": timer_frozen, "rage_timer_extensions": timer_extended})
    result = {"source_report": str(directory / "report.json"), "assertions": assertions,
              "scope": "Internal observer/DataView vs external event stream; no native damage-source callback or counterfactual dodge assertion."}
    (directory / "event-assertions.json").write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return result


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("directory", type=Path)
    args = parser.parse_args()
    result = analyze(args.directory)
    print(json.dumps([{k: a[k] for k in ("name", "policy", "spawn_predictions", "spawn_matches", "prediction_errors", "rage_complete", "rage_timer_samples", "rage_timer_decrement_matches")} for a in result["assertions"]], indent=2))
