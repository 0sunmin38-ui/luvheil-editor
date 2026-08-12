#!/usr/bin/env bash
# 로컬 서버. 함께 들고 다니는 글꼴은 file:// 로는 CORS 에 막혀 뜨지 않는다.
set -e
cd "$(dirname "$0")"
PORT="${1:-8765}"
echo "http://localhost:$PORT 에서 띄웁니다 (Ctrl+C 로 종료)"
exec python3 -m http.server "$PORT"
