# 当前网络信息边界

当前 EXE SHA256 门禁保持不变。只读离线查看当前 EXE 字符串，发现 NetInputDevice::ProcessInputMessage 对输入帧的提示（文件偏移 0x776500 和 0x776568）。这只能证明存在输入帧消息处理，不能据此认定完整联机架构或所有技能都由服务器决定。未定位可用的 RTT 统计字段，未读取会话数据包，未执行游戏内 Steam/EOS 接口。

Steamworks 官方资料：
- https://partner.steamgames.com/doc/api/steamnetworkingtypes?l=english ：SteamNetworkingQuickConnectionStatus 有 m_nPing、连接质量、发送排队时间等。
- https://partner.steamgames.com/doc/api/ISteamNetworkingSockets?l=english ：提供连接状态查询接口。

接口存在并不意味着另一个进程可直接查询游戏自己的连接，或其结构可以直接套到以撒某个内存地址。当前版本日志将 network_rtt_ms 记录为 null，先补偿已知本地读取/计算/采样开销。今后若定位 RTT，仍应区分往返延迟、单向状态滞后、输入生效延迟和同步等待。

本地已生成的状态、目标、计时器能作为早期提示；未决定的分支和未收到的信息不能靠内存读取直接获知。现有预测是经过映射的机制模型，不是完整引擎未来模拟。
