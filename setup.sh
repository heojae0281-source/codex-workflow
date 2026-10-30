#!/usr/bin/env bash
# 작업 폴더에서 실행: bash /tmp/cw/setup.sh
set -u
SRC="$(cd "$(dirname "$0")" && pwd)"

if [ -f AGENTS.md ]; then
  echo "[!] 과제에 AGENTS.md가 이미 있음 -> 덮어쓰지 않음."
  echo "    킥오프 때 '/tmp/cw/AGENTS.md 지침도 함께 따라'라고 말할 것."
else
  cp "$SRC/AGENTS.md" .
  echo "[OK] AGENTS.md 복사 완료"
fi

[ -d .git ] || echo "[i] git 저장소 아님 -> Codex가 git init 하도록 AGENTS.md에 지시되어 있음"
echo
cat "$SRC/PROMPTS.md"
