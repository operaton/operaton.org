#!/usr/bin/env bash
# Runs the Jekyll CI workflow locally using act (https://github.com/nektos/act).
# Usage: .devenv/scripts/ci/run-act.sh [act options]
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

exec act push \
  --job build \
  "$@"
