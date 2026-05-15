#!/bin/bash
set -euo pipefail

# Only run in remote Claude Code on the web environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# No dependencies to install yet — project is in initial setup phase.
# Add dependency installation here as the tech stack is established, e.g.:
#   npm install
#   pip install -r requirements.txt
#   cargo fetch

echo "Session start hook complete (no dependencies to install yet)."
