#!/usr/bin/env bash
# Find the most recent weekly summary post in _posts/.
# Prints the file path, or nothing if none found.
# Weekly posts are identified by their slug pattern: *-weekly-* or *-community-update* or *-week-in-review*

POSTS_DIR="$(git -C "$(dirname "$0")" rev-parse --show-toplevel)/_posts"

find "$POSTS_DIR" -name "*.md" \
  | grep -E "(weekly|community-update|week-in-review)" \
  | sort | tail -1
