# Behavior Cloning run

- train rows: 10366 (seeds 3JY1 6FLR)
- val rows: 5400 (seeds 7W3L P1Z9)
- test rows: 3215 (seeds SWGF G7WV)
- config: epochs=12 batch=256 lr=0.001 entropy=0 value_coeff=0

| epoch | train move CE | train fire CE | val move CE | val fire CE | val move acc | val fire acc | val joint acc |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 1 | 1.9791 | 1.0141 | 1.8925 | 0.9425 | 0.3530 | 0.6698 | 0.2543 |
| 2 | 1.8493 | 0.6991 | 1.8528 | 0.7884 | 0.3450 | 0.7067 | 0.2546 |
| 3 | 1.8014 | 0.5210 | 1.8287 | 0.6581 | 0.3552 | 0.7494 | 0.2794 |
| 4 | 1.7703 | 0.3938 | 1.8251 | 0.5532 | 0.3659 | 0.8011 | 0.3043 |
| 5 | 1.7446 | 0.3163 | 1.8144 | 0.5443 | 0.3561 | 0.8091 | 0.2983 |
| 6 | 1.7211 | 0.2715 | 1.8152 | 0.5141 | 0.3594 | 0.8174 | 0.3017 |
| 7 | 1.7019 | 0.2391 | 1.8247 | 0.5136 | 0.3556 | 0.8217 | 0.3002 |
| 8 | 1.6826 | 0.2192 | 1.8211 | 0.5295 | 0.3670 | 0.8167 | 0.3070 |
| 9 | 1.6602 | 0.2024 | 1.8290 | 0.5304 | 0.3633 | 0.8235 | 0.3081 |
| 10 | 1.6406 | 0.1884 | 1.8445 | 0.5591 | 0.3594 | 0.8156 | 0.3020 |
| 11 | 1.6235 | 0.1754 | 1.8411 | 0.5606 | 0.3702 | 0.8180 | 0.3124 |
| 12 | 1.6036 | 0.1689 | 1.8522 | 0.5635 | 0.3587 | 0.8257 | 0.3069 |

- test (final epoch): move acc 0.4078, fire acc 0.8538, joint acc 0.3720
- test (best val checkpoint): move acc 0.4193, fire acc 0.8389, joint acc 0.3739

Baselines: train joint majority 0.0706, val joint majority 0.1014.

Teacher-forced accuracy measures imitation, not combat skill. Closed-loop evaluation is the next step.
