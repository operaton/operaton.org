#!/usr/bin/env bash
# Collect merged PRs and active PRs across the Operaton GitHub org for a date range.
# Usage: collect-github-activity.sh [days=7]
# Output: JSON with arrays "merged_prs" and "active_prs"

set -euo pipefail

DAYS="${1:-7}"
SINCE=$(date -u -v-"${DAYS}d" +%Y-%m-%dT%H:%M:%SZ 2>/dev/null \
  || date -u --date="${DAYS} days ago" +%Y-%m-%dT%H:%M:%SZ)

REPOS=(
  operaton/operaton
  operaton/operaton-mcp
  operaton/operaton.org
  operaton/docs
)

echo "{"
echo "  \"since\": \"${SINCE}\","
echo "  \"merged_prs\": ["

first=1
for repo in "${REPOS[@]}"; do
  # Merged PRs
  prs=$(gh pr list \
    --repo "$repo" \
    --state merged \
    --search "merged:>=${SINCE}" \
    --json number,title,author,mergedAt,url,labels,body \
    --limit 50 2>/dev/null || echo "[]")

  if [ "$prs" != "[]" ] && [ -n "$prs" ]; then
    items=$(echo "$prs" | jq -c ".[] | {repo: \"$repo\", number, title, author: .author.login, mergedAt, url, labels: [.labels[].name]}")
    while IFS= read -r item; do
      [ -z "$item" ] && continue
      [ "$first" = "0" ] && echo ","
      echo "    $item"
      first=0
    done <<< "$items"
  fi
done

echo "  ],"
echo "  \"active_prs\": ["

first=1
for repo in "${REPOS[@]}"; do
  # Active (open) PRs with recent activity
  prs=$(gh pr list \
    --repo "$repo" \
    --state open \
    --json number,title,author,createdAt,updatedAt,url,labels,reviewDecision,comments \
    --limit 20 2>/dev/null || echo "[]")

  if [ "$prs" != "[]" ] && [ -n "$prs" ]; then
    # Filter to those updated within the window and having comments/reviews
    items=$(echo "$prs" | jq -c \
      --arg since "$SINCE" \
      '.[] | select(.updatedAt >= $since) | {repo: "'"$repo"'", number, title, author: .author.login, updatedAt, url, labels: [.labels[].name], reviewDecision, commentCount: (.comments | length)}')
    while IFS= read -r item; do
      [ -z "$item" ] && continue
      [ "$first" = "0" ] && echo ","
      echo "    $item"
      first=0
    done <<< "$items"
  fi
done

echo "  ]"
echo "}"
