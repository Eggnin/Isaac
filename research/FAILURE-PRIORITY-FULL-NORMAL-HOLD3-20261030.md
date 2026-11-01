# 受伤失败优先级

输入 1 份，运行 14 场，碰撞事件 9 次，实际血伤事件 9 次，累计血伤 9。

校准无敌模式的零血伤碰撞只作为次级证据，不计入实际掉血主排序。

## 按实际掉血排序

| 攻击族 | 血伤事件 | 血伤量 | 全部碰撞 | 受影响运行 | 原因 |
| --- | ---: | ---: | ---: | ---: | --- |
| contact | 4 | 4 | 4 | 3 | no-predicted-zero-risk-route: 4 |
| creep | 4 | 4 | 4 | 1 | no-predicted-zero-risk-route: 4 |
| roll | 4 | 4 | 4 | 2 | no-predicted-zero-risk-route: 4 |
| cage-rock-wave | 2 | 2 | 2 | 1 | no-predicted-zero-risk-route: 2 |
| hop-contact | 2 | 2 | 2 | 2 | no-predicted-zero-risk-route: 2 |
| laser | 2 | 2 | 2 | 2 | no-predicted-zero-risk-route: 2 |
| projectile | 2 | 2 | 2 | 2 | no-predicted-zero-risk-route: 2 |

## 按全部碰撞命中排序

| 攻击族 | 全部碰撞 | 血伤事件 | 受影响运行 |
| --- | ---: | ---: | ---: |
| contact | 4 | 4 | 3 |
| creep | 4 | 4 | 1 |
| roll | 4 | 4 | 2 |
| cage-rock-wave | 2 | 2 | 1 |
| hop-contact | 2 | 2 | 2 |
| laser | 2 | 2 | 2 |
| projectile | 2 | 2 | 2 |

## 失败分类

| 分类 | 事件数 |
| --- | ---: |
| no-predicted-zero-risk-route | 9 |

## 高频组合

| 危险组合 | 血伤事件 | 全部碰撞 | 示例 |
| --- | ---: | ---: | --- |
| cage-rock-wave+contact+creep | 2 | 2 | 1 场 |
| roll | 2 | 2 | 1 场 |
| contact+hop-contact+projectile | 1 | 1 | 1 场 |
| contact+laser | 1 | 1 | 1 场 |
| creep+laser+roll | 1 | 1 | 1 场 |
| creep+roll | 1 | 1 | 1 场 |
| hop-contact+projectile | 1 | 1 | 1 场 |

## 输入记录

| 记录 | 运行 | 碰撞 | 血伤 | SHA-256 |
| --- | ---: | ---: | ---: | --- |
| mixed-full-normal-hold3-20261030.json | 14 | 9 | 9 | `C9CE889DB5DF1C4DEC5F9FC78DC1E43570268FBC5409C8B88D31BF048B43C593` |
