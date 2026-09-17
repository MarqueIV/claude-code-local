#!/bin/bash
# Optional Claude Code status line that reminds you how to keep going when credits run out.
#
# Use it on its own — in ~/.claude/settings.json:
#   "statusLine": { "type": "command", "command": "bash ~/claude-code-local/scripts/statusline-keepgoing.sh" }
#
# Or paste the printf line at the end of your own status line script.

cat >/dev/null   # Claude Code sends session info on stdin; this line doesn't need it
printf '\033[38;2;120;120;135m💡 Out of Claude credits? Type \033[0m\033[1mexit\033[0m\033[38;2;120;120;135m, then \033[0m\033[1mkeep going\033[0m\033[38;2;120;120;135m to carry on with a free or local model\033[0m'
