#!/usr/bin/env bash
# List GitHub releases in the Operaton org published within the last N days.
# Usage: collect-releases.sh [days=7]
# Output: JSON array of release objects

set -euo pipefail

DAYS="${1:-7}"
SINCE=$(date -u -v-"${DAYS}d" +%Y-%m-%dT%H:%M:%SZ 2>/dev/null \
  || date -u --date="${DAYS} days ago" +%Y-%m-%dT%H:%M:%SZ)

REPOS=(
  operaton/operaton
  operaton/operaton-mcp
)

echo "["
first=1
for repo in "${REPOS[@]}"; do
  releases=$(gh release list --repo "$repo" --limit 10 --json tagName,publishedAt,url,name,isPrerelease 2>/dev/null || echo "[]")

  items=$(echo "$releases" | jq -c \
    --arg since "$SINCE" \
    --arg repo "$repo" \
    '.[] | select(.publishedAt >= $since and .isPrerelease == false) | {repo: $repo, tag: .tagName, name, publishedAt, url}')

  while IFS= read -r item; do
    [ -z "$item" ] && continue
    [ "$first" = "0" ] && echo ","
    echo "  $item"
    first=0
  done <<< "$items"
done

echo "]"
