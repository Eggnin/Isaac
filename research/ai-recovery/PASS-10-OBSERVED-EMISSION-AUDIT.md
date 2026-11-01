# Pass 10: observed emission envelopes and a recall audit

Date: 2026-10-31. Status: implemented, unit-tested, not yet validated in gameplay.

## Why this pass exists

Passes 3-9 added native motion and geometry, but the mechanism database still
does not predict most attacks before they spawn. Measured on the current tree:

- `gamebot_monster_geometry.json` holds 506 models: 319 contact, 139 projectile,
  12 laser, 36 creep. All 319 contact models are `planning_validated`; every
  projectile/laser/creep model is not.
- `gamebot_monster_geometry_patterns.json` holds 87 pattern rules over 76
  emitters. Those rules are the only reason `projectile-stream` /
  `projectile-burst` threats exist before a projectile is observable.
- `gamebot_runtime_semantics.json` contributes 3 warning rules at runtime; a
  6-minute sampled session produced 0 predictive warnings and 3 reactive
  contact warnings.

A projectile model with `pre_spawn_verified=true` and a stable trigger frame but
an empty `pattern` never reaches `Planner::build_threats`: the pattern lookup
requires a non-empty pattern. The native trigger window is known, the direction
is not, so the model is inert.

## What was added

`PlannerConfig::observed_emission_envelopes` (default **off**). When enabled:

- Every hostile projectile born in the current frame is attributed to its
  spawner when that spawner is in the snapshot. The planner records the angle of
  the projectile's velocity relative to the spawner-to-player vector, plus its
  speed, keyed by the spawner's Type/Variant/Subtype, state **and animation**.
  One state can play several attack animations with different directions;
  mixing them inflated the measured spread and made the guard reject emitters
  that are consistent per animation (365 of 420 candidate frames in the first
  audit run).
- A model with `kind="projectile"`, `pre_spawn_verified=true`, a trigger frame,
  and no pattern becomes a candidate envelope only when the emitter has at least
  `observed_emission_min_samples` (2) observations, the measured angular spread
  is at most `observed_emission_max_spread_degrees` (18 deg), and the observed
  speed range is at most `observed_emission_speed_ratio` (1.6x).
- The candidate is emitted through the existing `stream` pipeline with
  `direction=aimed`, a measured angular half-width of 2 sigma clamped to
  3-25 degrees, the measured mean speed, and the native trigger window.
  Evidence is labelled `observed emission envelope` with `timing_verified=false`;
  nothing is claimed as decompiled.

Otherwise the emitter keeps its current behaviour, which is "no pre-fire
prediction". Two inconsistent volleys, or a single volley, are not evidence and
produce nothing. The default configuration is unchanged, so production
decisions do not move until the flag is enabled.

Limitations: direction is learned only when the spawner is present in the same
snapshot; the statistic still mixes all attacks sharing one
Type/Variant/Subtype, state and animation, so two attack types that reuse the
same animation widen the spread until the guard disables the envelope rather
than guessing; there is no persistence across runs, no per-seed split, and no
angular drift handling. Learning requires the projectile's birth frame to be
observed, so a dropped frame loses that sample.

## Audit tool

`IsaacGamebot.exe --audit <frames.jsonl> <report.json>` replays a recorded
session through two planners (default, and `observed_emission_envelopes=true`)
and reports, per variant:

- frames, threats per frame, frames with any threat, frames with predictive
  threats, threat counts by kind;
- observed health drops, how many were covered by a threat that already made the
  player's position unsafe within the previous 1.5 s, and the mean lead time.

Coverage is recall only. A prediction the bot successfully dodged is
indistinguishable from a false positive without an independent collision
oracle, so the report deliberately does not publish a precision number.
Contact-like threats (`contact`, `fly-pursuit`, `slide-charge`, `squirt-dash`)
are counted in `coverage_any` but excluded from `coverage_hazard`: a nearby
enemy body always covers its own position, so mixing the two would hide whether
a projectile, laser, explosion or effect was actually predicted. The observed
variant also reports emission counters (`births`, `unattributed`, `samples`,
`candidate_frames`, `envelopes`, `no_samples`, `spread_rejected`,
`speed_rejected`) so a zero result can be explained rather than guessed.

## Evidence so far

Unit tests (160 passing) cover: envelope emitted after two consistent volleys,
one volley producing nothing, two inconsistent volleys producing nothing,
animations inside one state staying separate, and no change under the default
configuration.

Two real-data audits:

- `sessions/native-20261030-212439-461`, 457-frame slice: one health drop.
  Default covered it 1.23 s ahead, the observed-envelope variant 1.43 s ahead,
  adding 24 predictive frames and 28 `projectile-stream` threats.
- `sessions/native-20261030-171209-765`, 5134 frames over six segments: three
  health drops, all from body contact by fast chasers (type 85 at ~250 px/s).
  Both variants reported `coverage_any=3/3`, `coverage_hazard=0/3`: the drops
  were predicted as proximity, not as projectile/laser hazards. The
  observed-envelope branch produced no envelope, and its counters explain why:
  16 hostile projectile births, 12 learned samples, 420 frames with a
  patternless pre-spawn model, 302 frames rejected for fewer than two samples
  and 118 for an over-wide spread. That session simply contains almost no
  repeated hostile volleys to learn from.

The 5134-frame audit is the more useful result: it says the damage in that
session was not a missing attack model, it was getting caught by fast contact
chasers. The observed-emission feature cannot be judged on data with 16
projectile births; it needs a session with repetitive projectile attacks.

## Not done

No gameplay, no control run, no promotion of the flag to production, no
per-identity coverage report, and no precision estimate. The next step is to run
`--audit` over sessions with more damage events and compare coverage before
promoting anything.

Compilation is not prediction accuracy. An unvalidated envelope in production
would be the same mistake this pass measures against.
