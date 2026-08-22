#!/usr/bin/env bash
# Unattended runner for one lane of the market-intelligence sprint.
#
# Usage:  ./run-lane.sh a        (Hiya Mac  — Lane A, Asia/Oceania)
#         ./run-lane.sh b        (Lenovo    — Lane B, Africa/Middle East)
#         ./run-lane.sh c        (My Mac    — Lane C, LatAm/Europe; use with codex, not claude)
#
# What it does:
#   - Loops forever, running the lane's prompt through the `claude` CLI with
#     permission prompts skipped, so nothing needs a human to click "allow".
#   - If a run ends (finishes, crashes, or hits a token/rate limit), waits
#     RETRY_DELAY seconds and starts a fresh session automatically.
#   - Stops on its own at END_TIME, or immediately if you create the stop file.
#   - Logs everything to intel-sprint-<lane>.log next to this script.
#
# To stop early from any terminal:  touch ~/.intel-sprint-stop
# To check it's alive:              tail -f scripts/intel-sprint-*.log

set -uo pipefail

LANE="${1:?usage: run-lane.sh <a|b|c>}"
LANE_UPPER=$(echo "$LANE" | tr '[:lower:]' '[:upper:]')

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
BRANCH="main"
PROMPT_FILE="$REPO_DIR/LANE_${LANE_UPPER}_PROMPT.md"
STOP_FILE="$HOME/.intel-sprint-stop"
LOG="$SCRIPT_DIR/intel-sprint-${LANE}.log"
RETRY_DELAY=60          # seconds to wait before starting a new session
END_TIME="2026-08-26 09:00:00"   # local time — adjust if your cutoff is different

if [[ ! -f "$PROMPT_FILE" ]]; then
  echo "No prompt file at $PROMPT_FILE — check the lane letter and repo path." | tee -a "$LOG"
  exit 1
fi

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG"; }

log "=== starting lane $LANE_UPPER runner (pid $$) ==="
log "stop anytime with: touch $STOP_FILE"

while true; do
  if [[ -f "$STOP_FILE" ]]; then
    log "stop file found at $STOP_FILE — exiting."
    break
  fi
  if [[ $(date +%s) -ge $(date -j -f "%Y-%m-%d %H:%M:%S" "$END_TIME" +%s 2>/dev/null || date -d "$END_TIME" +%s) ]]; then
    log "past END_TIME ($END_TIME) — exiting."
    break
  fi

  cd "$REPO_DIR" || { log "repo missing at $REPO_DIR"; sleep "$RETRY_DELAY"; continue; }
  git pull origin "$BRANCH" >> "$LOG" 2>&1

  log "launching claude session for lane $LANE_UPPER..."
  claude --dangerously-skip-permissions -p "$(cat "$PROMPT_FILE")" >> "$LOG" 2>&1
  EXIT_CODE=$?
  log "session ended (exit $EXIT_CODE). Retrying in ${RETRY_DELAY}s unless stopped."

  sleep "$RETRY_DELAY"
done

log "=== runner stopped ==="
