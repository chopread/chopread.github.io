#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

if [ -n "${GH_PAT:-}" ]; then
  git remote set-url origin "https://x-access-token:${GH_PAT}@github.com/chopread/chopread.github.io.git"
  echo "Git remote configured with write credentials."
else
  echo "Warning: GH_PAT not set — git push will fail. Add it in your Claude Code on the web environment config."
fi
