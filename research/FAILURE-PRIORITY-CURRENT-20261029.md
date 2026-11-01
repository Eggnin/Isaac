# 受伤失败优先级

输入 1 份，运行 6 场，碰撞事件 8 次，实际血伤事件 8 次，累计血伤 8。

校准无敌模式的零血伤碰撞只作为次级证据，不计入实际掉血主排序。

## 按实际掉血排序

| 攻击族 | 血伤事件 | 血伤量 | 全部碰撞 | 受影响运行 | 原因 |
| --- | ---: | ---: | ---: | ---: | --- |
| roll | 4 | 4 | 4 | 2 | no-predicted-zero-risk-route: 4 |
| charge | 3 | 3 | 3 | 2 | no-predicted-zero-risk-route: 3 |
| creep | 1 | 1 | 1 | 1 | no-predicted-zero-risk-route: 1 |
| hop-contact | 1 | 1 | 1 | 1 | no-predicted-zero-risk-route: 1 |
| laser | 1 | 1 | 1 | 1 | no-predicted-zero-risk-route: 1 |
| projectile | 1 | 1 | 1 | 1 | no-predicted-zero-risk-route: 1 |

## 按全部碰撞命中排序

| 攻击族 | 全部碰撞 | 血伤事件 | 受影响运行 |
| --- | ---: | ---: | ---: |
| roll | 4 | 4 | 2 |
| charge | 3 | 3 | 2 |
| creep | 1 | 1 | 1 |
| hop-contact | 1 | 1 | 1 |
| laser | 1 | 1 | 1 |
| projectile | 1 | 1 | 1 |

## 失败分类

| 分类 | 事件数 |
| --- | ---: |
| no-predicted-zero-risk-route | 8 |

## 高频组合

| 危险组合 | 血伤事件 | 全部碰撞 | 示例 |
| --- | ---: | ---: | --- |
| charge | 3 | 3 | 2 场 |
| roll | 3 | 3 | 1 场 |
| creep+roll | 1 | 1 | 1 场 |
| hop-contact+laser+projectile | 1 | 1 | 1 场 |

## 输入记录

| 记录 | 运行 | 碰撞 | 血伤 | SHA-256 |
| --- | ---: | ---: | ---: | --- |
| mixed-current-priority-20261029.json | 6 | 8 | 8 | `F9D3967348B58BB4DD464E876188599EF6101A42413EBF26B42A5B0D31A0D2CC` |
