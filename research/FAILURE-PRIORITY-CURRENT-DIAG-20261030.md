# 受伤失败优先级

输入 1 份，运行 6 场，碰撞事件 13 次，实际血伤事件 13 次，累计血伤 13。

校准无敌模式的零血伤碰撞只作为次级证据，不计入实际掉血主排序。

## 按实际掉血排序

| 攻击族 | 血伤事件 | 血伤量 | 全部碰撞 | 受影响运行 | 原因 |
| --- | ---: | ---: | ---: | ---: | --- |
| contact | 6 | 6 | 6 | 3 | no-zero-risk-route-in-search: 5; optimistic-safe: 1 |
| roll | 6 | 6 | 6 | 2 | no-zero-risk-route-in-search: 6 |
| creep | 5 | 5 | 5 | 2 | no-zero-risk-route-in-search: 4; optimistic-safe: 1 |
| cage-rock-wave | 4 | 4 | 4 | 2 | no-zero-risk-route-in-search: 4 |
| laser | 4 | 4 | 4 | 3 | no-zero-risk-route-in-search: 3; optimistic-safe: 1 |
| projectile | 2 | 2 | 2 | 2 | no-zero-risk-route-in-search: 2 |
| hop-contact | 1 | 1 | 1 | 1 | no-zero-risk-route-in-search: 1 |

## 按全部碰撞命中排序

| 攻击族 | 全部碰撞 | 血伤事件 | 受影响运行 |
| --- | ---: | ---: | ---: |
| contact | 6 | 6 | 3 |
| roll | 6 | 6 | 2 |
| creep | 5 | 5 | 2 |
| cage-rock-wave | 4 | 4 | 2 |
| laser | 4 | 4 | 3 |
| projectile | 2 | 2 | 2 |
| hop-contact | 1 | 1 | 1 |

## 失败分类

| 分类 | 事件数 |
| --- | ---: |
| no-zero-risk-route-in-search | 12 |
| optimistic-safe | 1 |

## 高频组合

| 危险组合 | 血伤事件 | 全部碰撞 | 示例 |
| --- | ---: | ---: | --- |
| roll | 4 | 4 | 2 场 |
| cage-rock-wave+contact+creep | 2 | 2 | 1 场 |
| cage-rock-wave+creep | 2 | 2 | 2 场 |
| contact+laser+roll | 2 | 2 | 2 场 |
| contact+creep+laser | 1 | 1 | 1 场 |
| contact+hop-contact+projectile | 1 | 1 | 1 场 |
| laser+projectile | 1 | 1 | 1 场 |

## 输入记录

| 记录 | 运行 | 碰撞 | 血伤 | SHA-256 |
| --- | ---: | ---: | ---: | --- |
| mixed-current-priority-diag-20261030.json | 6 | 13 | 13 | `637977630EE8F593C2FCB4D98726C2A85ADA1B9767A20D065414746561AB2946` |
