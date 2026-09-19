#!/bin/bash
# Qwen 3.8 Code — Claude Code on Qwen 3.8 27B (8-bit MLX)
# Double-click to launch
#
# ~29 GB of weights, 17.9 tok/s on an M5 Max. Passed a Claude Code smoke test
# (write a file, run it, report) on 2026-09-19. Built for 96 GB Macs; runs on 64 GB
# if little else is open. Replaced the old Llama 70B launcher.

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "$SCRIPT_DIR/lib/claude-local-common.sh"

CLAUDE_BIN="${CLAUDE_BIN:-$(command -v claude || echo $HOME/.local/bin/claude)}"
require_claude_bin

# Default is lmstudio-community's MLX 8-bit build:
#   https://huggingface.co/lmstudio-community/Qwen3.8-27B-MLX-8bit
# Override with MLX_MODEL=<your-path-or-hf-id>. Prefers a local flat-folder
# cache if already downloaded, so we load directly instead of re-pulling.
MLX_MODEL_DEFAULT="$(resolve_mlx_model \
  "$HOME/.cache/huggingface/hub/Qwen3.8-27B-MLX-8bit" \
  "lmstudio-community/Qwen3.8-27B-MLX-8bit")"

ensure_mlx_server "${MLX_MODEL:-$MLX_MODEL_DEFAULT}" \
  "  Loading Qwen 3.8 27B on MLX (8-bit, ~29 GB)..."

clear
echo ""
echo "  → Claude Code with LOCAL AI (Qwen 3.8 27B)"
echo "  → MLX Native: 8-bit, ~18 tok/s on an M5 Max"
echo "  → Running on Apple Silicon — no cloud, no API fees"
echo ""

ANTHROPIC_BASE_URL=http://localhost:4000 \
CLAUDE_SESSION_LABEL="Qwen 3.8 · Local" \
exec "$CLAUDE_BIN" --model claude-sonnet-4-6 \
  --permission-mode auto \
  --settings "$SCRIPT_DIR/lib/local-settings.json" \
  --append-system-prompt-file "$HOME/.claude/CLAUDE.md" \
  --mcp-config "$HOME/.claude.json"
