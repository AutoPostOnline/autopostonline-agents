#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-$PWD}"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p "$TARGET/docs/agents"

cp "$SOURCE_DIR/SKILL.md" "$TARGET/SKILL.md"
cp "$SOURCE_DIR/AGENTS.md" "$TARGET/AGENTS.md"
cp "$SOURCE_DIR/server.json" "$TARGET/server.json"
cp "$SOURCE_DIR/llms.txt" "$TARGET/llms.txt"
cp "$SOURCE_DIR/docs/agents/"*.md "$TARGET/docs/agents/"

cat <<MSG
Installed agent files into: $TARGET

Next:
  cd $TARGET
  git add SKILL.md AGENTS.md server.json llms.txt docs/agents
  git commit -m "add AutoPostOnline agent docs and metadata"
  git push
MSG
