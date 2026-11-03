# PPO from BC

- init policy: D:\Isaac\validation\bc-balanced-20261103\best-policy.json
- iterations: 1, rollout: 1024, action repeat: 1, max steps: 1800
- lr 0.0001, gamma 0.995, gae 0.95, clip 0.2, entropy 0.002
- seeds: 3JY1 6FLR, scenes: auto

| iter | frames | episodes | clears | deaths | mean episode reward | damage dealt | damage taken | policy loss | value loss | explained var |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 13 | 13312 | 16 | 0 | 1 | -33.18 | 115.5 | 9.0 | -0.0026 | 6.1934 | 0.0277 |

Checkpoints: `checkpoints/latest-training.json`, `checkpoints/best-policy.json`.
