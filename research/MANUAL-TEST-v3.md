# v3 手测说明

## 构建

- 入口：`Start-Assist.cmd`
- 程序：`bin/IsaacGamebot.exe`
- 精确冻结副本：`bin/IsaacGamebot-v3.exe`
- 策略快照：`research/policy-baselines/policy-20261028-v3/`
- 综合哈希：`A286D84CD03018170660D43C586B800753B460BE9840B7B8EBFBE1AAC44D96C9`
- EXE SHA256：`86D6AC3CBBFB47F071C962FE0D24B59AE3A85CE6FEE341E2EF300F4F292FBEE6`

## 手测步骤

1. 只启动一个 `isaac-ng.exe`，进入可操作的战斗房间。
2. 运行 `Start-Assist-v3.cmd`。该入口直接启动冻结副本，不会根据当前源码自动重建。
3. 确认助手显示已连接，按 `F8` 开启自动控制。
4. `F6` 切换自动攻击，`F9` 急停，`Shift` 临时手动。程序启动时控制默认关闭，自动攻击默认开启。
5. 日志写入 `sessions/<时间>/frames-*.jsonl`；助手窗口的“打开日志文件夹”可直接打开当前目录。

`bin/IsaacGamebot-v3.exe` 的 SHA256 与 v3 manifest 一致。当前源码包含尚未通过新种子验证的零伤害实验，因此不要用 `Start-Assist.cmd` 代替 v3 手测入口。

## v3 默认策略

- 导航升级后保存下一条物理路点 30 帧，不再逐帧重算最终射击泊位。
- 候选仍先比较受击和 exposure；两者都为零时，优先靠近已保持的物理路点，再比较末端余量。
- 导航无进展改为按实体 identity 跟踪 HP，避免召唤物或暂时不可选中的 Boss 被误判为掉血。
- Eye 固定锁线、Cross Stoney 周期弹幕、Cage 岩屑波和 Brimstone Head 激光预警保留。

## 当前结果

原 7 房混合矩阵，两个种子，3600 帧：

- 28/28 数据通过。
- 正常模式 12/14 清房，8/14 零受击清房。
- 0 死亡，2 场超时，6 场受击，共 11 次受击。
- v2 对照为 8/14 零受击清房、3 场超时、6 场受击、共 18 次受击。

完整报告：`research/mixed-v3-final-default.json`。

## 未完成项

The Cage 仍是明确失败项。两个种子在 3600 帧分别受击 4、3 次且未清房；第二种子延长到 6000 帧仍未清房并受击 4 次。该问题不能用手测版本已全面通过来描述。

攻击保持实验曾把首种子受击从 4 降到 2，但会令窄房和 Gurdy Jr. 新增受击，因此已从策略中移除。
