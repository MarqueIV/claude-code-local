#!/bin/bash
# MLX Native Anthropic Server — start helper
# Speaks the Anthropic Messages API directly. No proxy. No translation layer.
#
# Usage:
#   bash scripts/start-mlx-server.sh                              # default Gemma 4 31B
#   MLX_MODEL=lmstudio-community/Qwen3.8-27B-MLX-8bit bash scripts/start-mlx-server.sh
#   bash scripts/start-mlx-server.sh divinetribe/Hermes-4-14B-abliterated-4bit-mlx

MODEL="${1:-${MLX_MODEL:-divinetribe/gemma-4-31b-it-abliterated-4bit-mlx}}"
PORT="${MLX_PORT:-4000}"
PYTHON="${MLX_PYTHON:-$HOME/.local/mlx-server/bin/python3}"
SERVER="${MLX_SERVER:-$HOME/.local/mlx-native-server/server.py}"

echo "Starting MLX Native Anthropic Server"
echo "  model: $MODEL"
echo "  port:  $PORT"

MLX_MODEL="$MODEL" MLX_PORT="$PORT" exec "$PYTHON" "$SERVER"
