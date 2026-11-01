# 受伤失败优先级

输入 8 份，运行 434 场，碰撞事件 350 次，实际血伤事件 50 次，累计血伤 54。

校准无敌模式的零血伤碰撞只作为次级证据，不计入实际掉血主排序。

## 按实际掉血排序

| 攻击族 | 血伤事件 | 血伤量 | 全部碰撞 | 受影响运行 | 原因 |
| --- | ---: | ---: | ---: | ---: | --- |
| contact | 27 | 31 | 280 | 123 | observed-hit-without-health-damage: 149; observed-hit-with-optimistic-safe: 99; no-predicted-zero-risk-route: 22; missing-prediction:contact: 4; missing-prediction: 3; evidence-incomplete: 2; optimistic-safe: 1 |
| creep | 16 | 16 | 52 | 32 | observed-hit-without-health-damage: 30; no-predicted-zero-risk-route: 15; observed-hit-with-optimistic-safe: 5; missing-prediction: 1; optimistic-safe: 1 |
| cage-rock-wave | 12 | 12 | 19 | 8 | no-predicted-zero-risk-route: 12; observed-hit-without-health-damage: 7 |
| roll | 11 | 11 | 20 | 12 | no-predicted-zero-risk-route: 11; observed-hit-without-health-damage: 9 |
| charge | 8 | 8 | 14 | 10 | no-predicted-zero-risk-route: 7; observed-hit-without-health-damage: 6; optimistic-safe: 1 |
| projectile | 6 | 6 | 88 | 46 | observed-hit-without-health-damage: 69; observed-hit-with-optimistic-safe: 9; no-predicted-zero-risk-route: 5; missing-prediction: 3; evidence-incomplete: 1; optimistic-safe: 1 |
| laser | 6 | 6 | 55 | 14 | missing-prediction: 43; no-predicted-zero-risk-route: 6; observed-hit-without-health-damage: 6 |
| hop-contact | 3 | 3 | 29 | 14 | observed-hit-without-health-damage: 21; observed-hit-with-optimistic-safe: 5; no-predicted-zero-risk-route: 3 |

## 按全部碰撞命中排序

| 攻击族 | 全部碰撞 | 血伤事件 | 受影响运行 |
| --- | ---: | ---: | ---: |
| contact | 280 | 27 | 123 |
| creep | 52 | 16 | 32 |
| cage-rock-wave | 19 | 12 | 8 |
| roll | 20 | 11 | 12 |
| charge | 14 | 8 | 10 |
| projectile | 88 | 6 | 46 |
| laser | 55 | 6 | 14 |
| hop-contact | 29 | 3 | 14 |
| explosive-npc | 12 | 0 | 6 |
| explosive-projectile | 3 | 0 | 2 |
| unknown | 2 | 0 | 2 |

## 失败分类

| 分类 | 事件数 |
| --- | ---: |
| observed-hit-without-health-damage | 188 |
| observed-hit-with-optimistic-safe | 59 |
| no-predicted-zero-risk-route | 44 |
| missing-prediction:laser | 43 |
| missing-prediction:contact | 6 |
| evidence-incomplete | 3 |
| missing-prediction:projectile | 2 |
| optimistic-safe | 2 |
| missing-prediction:creep | 1 |
| missing-prediction:projectile+contact | 1 |
| missing-prediction:unknown | 1 |

## 高频组合

| 危险组合 | 血伤事件 | 全部碰撞 | 示例 |
| --- | ---: | ---: | --- |
| contact | 8 | 122 | 60 场 |
| charge | 7 | 13 | 9 场 |
| roll | 7 | 13 | 7 场 |
| contact+creep | 5 | 21 | 16 场 |
| cage-rock-wave+creep | 5 | 8 | 8 场 |
| contact+laser+roll | 4 | 7 | 5 场 |
| cage-rock-wave+contact+creep | 4 | 6 | 5 场 |
| contact+projectile | 3 | 47 | 30 场 |
| cage-rock-wave+contact+creep+laser | 2 | 3 | 3 场 |
| hop-contact+projectile | 1 | 12 | 3 场 |
| contact+hop-contact+projectile | 1 | 5 | 4 场 |
| cage-rock-wave | 1 | 2 | 2 场 |

## 输入记录

| 记录 | 运行 | 碰撞 | 血伤 | SHA-256 |
| --- | ---: | ---: | ---: | --- |
| monster-random-coverage-final.json | 365 | 274 | 0 | `6DE4250AC789B58856CA26CB46044A8ADFECD7389D411672A522F8B801521EEA` |
| mixed-reachhold.json | 28 | 20 | 10 | `F0FE24686BD78049FCF0409172F33F285CC246CDA01E97AF241B459A6F7955B6` |
| mixed-reachhold-holdout.json | 6 | 16 | 8 | `C0E429967EE873D8981F001D9692EFD275F2BA25F755A38B05AEA60FE8EB37A4` |
| enemy-coverage-current-3.json | 24 | 24 | 24 | `96DA75EFA4199CDB5AF76103A349F5ED82777DF13EEA55AA562933027F831F62` |
| current-default-v13-bosscheck.json | 8 | 16 | 8 | `C71464B4D1228F65B86487C00D0A29BE6E8B513E0C81AD967A72A7EF31A3C436` |
| native-policy-mechanisms-v10-seed1.json | 1 | 0 | 0 | `7D8613D684A5461657A639EACC477857A10196D147DB3070B88FEC5DF869B618` |
| native-policy-mechanisms-v10-seed2.json | 1 | 0 | 0 | `FBD6759655FD7CBEC81B9400D7CBFE2AB01826E4F047C9407D02DFA3474176FF` |
| native-policy-mechanisms-v10-seed3.json | 1 | 0 | 0 | `7368F199099C74E26C349817C32F19A4DE3F2BBBEBDB8388060BE607AF6F8752` |
