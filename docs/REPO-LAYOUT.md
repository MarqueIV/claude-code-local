# 📁 What's In This Repo

```
📦 claude-code-local/
 ├── ⚡ proxy/
 │   └── server.py              ← MLX Native Anthropic Server with tool-call recovery (~1000 lines)
 ├── 🚀 launchers/
 │   ├── Claude Local.command    ← Default fighter — Claude Code + local model
 │   ├── Gemma 4 Code.command    ← 🟢 THE QUICK ONE
 │   ├── Qwen 3.8 Code.command   ← 🟣 Qwen 3.8 27B, 96 GB Macs
 │   ├── Browser Agent.command   ← 🌐 Autonomous Brave browser control
 │   ├── Narrative Gemma.command ← 🎭 Auto-narration mode
 │   └── lib/claude-local-common.sh ← Shared: model-aware restart, cache resolver, health-wait
 ├── 🎭 NarrativeGemma/
 │   └── CLAUDE.md              ← Narration persona (sanitized, generic, opt-in)
 ├── 🛠️  scripts/
 │   ├── download-and-import.sh ← Download a model (`gemma` / `qwen` / `gemma12` / `hermes`)
 │   ├── persistent-download.sh ← Auto-retry downloader for big models
 │   ├── start-mlx-server.sh    ← Server start helper
 │   ├── test_mlx_server.py     ← Tool-call reliability test suite
 │   └── upload-mlx-quant.sh    ← Publish your own MLX-quantized uploads to HF
 ├── 📊 docs/
 │   └── BENCHMARKS.md          ← Detailed speed comparisons
 └── setup.sh                    ← One-command installer
```

---

[← back to the README](../README.md)
