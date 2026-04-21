#!/usr/bin/env bash
# Installer dotfiles-erlend ved å sette en source-linje i ~/.zshrc.
# Kjør på nytt uten bivirkninger – linjen legges bare til én gang.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ALIASES_FILE="$REPO_DIR/aliases.sh"
ZSHRC="$HOME/.zshrc"
MARKER="# >>> dotfiles-erlend >>>"
END_MARKER="# <<< dotfiles-erlend <<<"

if [ ! -f "$ALIASES_FILE" ]; then
  echo "Fant ikke $ALIASES_FILE" >&2
  exit 1
fi

touch "$ZSHRC"

if grep -qF "$MARKER" "$ZSHRC"; then
  echo "Allerede installert i $ZSHRC – ingen endring."
  exit 0
fi

{
  echo ""
  echo "$MARKER"
  echo "source \"$ALIASES_FILE\""
  echo "$END_MARKER"
} >> "$ZSHRC"

echo "Lagt til source-linje i $ZSHRC"
echo "Kjør:  source $ZSHRC   (eller åpne nytt terminalvindu)"
