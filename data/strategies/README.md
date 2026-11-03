# Strategy memory

`current.json` 和 `strategy-vN.json` 由 `--strategy-optimize` / `StrategyMemory`
写入。目录为空或缺失时，实时 MPC 使用内置 Profile，不影响启动。

版本快照包含 `format`、`version`、`profiles` 和 `history`。每个 Profile 的
`performance_summary.simulated=true` 表示离线回放模拟，不是实机无伤成绩。

不要把 `holdout` 场景反复用于调参；保留评估集只用于策略晋升判断。
