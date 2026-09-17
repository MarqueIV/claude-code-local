# Claude Code Local — "keep going" for your shell.
# Add this line to ~/.zshrc (setup.sh does it for you):
#   source "$HOME/claude-code-local/scripts/keepgoing-shell.sh"
#
# Then, when Claude runs out of credits: type `exit` in Claude Code, and `keep going`.

if [ -n "$ZSH_VERSION" ]; then
  _CCL_KEEPGOING="${${(%):-%x}:A:h:h}/bin/keepgoing"
else
  _CCL_KEEPGOING="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/bin/keepgoing"
fi

keep() {
  if [ "$1" = "going" ]; then
    shift
    "$_CCL_KEEPGOING" "$@"
  else
    echo "did you mean: keep going"
  fi
}
alias keepgoing='"$_CCL_KEEPGOING"'
