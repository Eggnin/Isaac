# Behavior Cloning run

- train rows: 10366 (seeds 3JY1 6FLR)
- val rows: 5400 (seeds 7W3L P1Z9)
- test rows: 3215 (seeds SWGF G7WV)
- config: epochs=1 batch=256 lr=0.001 entropy=0 value_coeff=0

| epoch | train move CE | train fire CE | val move CE | val fire CE | val move acc | val fire acc | val joint acc |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 21 | 1.5315 | 0.1289 | 1.9956 | 0.6354 | 0.3254 | 0.8222 | 0.2793 |

- test (final epoch): move acc 0.3792, fire acc 0.8411, joint acc 0.3344
- test (best val checkpoint): move acc 0.4028, fire acc 0.8476, joint acc 0.3462

Baselines: train joint majority 0.0706, val joint majority 0.1014.

Teacher-forced accuracy measures imitation, not combat skill. Closed-loop evaluation is the next step.
