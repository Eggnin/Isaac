# The Browsing of Isaac：本地训练引擎修改

本机曾在 [chiikabu/the-browsing-of-isaac](https://github.com/chiikabu/the-browsing-of-isaac) 的 `e346ce66a2cc6e8285258153e5583d5b55a412d8` 提交上开发训练运行时。完整上游检出、生成产物和游戏资源不纳入此仓库；这里保存本机检出中的源码变更：

- `the-browsing-of-isaac-e346ce6.patch`：对当时已跟踪的上游文件的修改。
- `host_training.c`：上游检出中尚未跟踪的新文件，目标路径是 `scripts/recomp/host/src/host_training.c`。

需要恢复源码时，先单独获取上游项目并切换到上述提交，再在上游项目目录运行 `git apply --check <补丁路径>` 和 `git apply <补丁路径>`，最后将 `host_training.c` 复制到目标路径。补丁只保存源码修改；WASM、内存映像与游戏资源仍须按本机文档另行准备和验证。
