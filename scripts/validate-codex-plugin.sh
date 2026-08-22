#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  ".codex-plugin/plugin.json"
  ".codex-plugin/marketplace.json"
  "CODEX.md"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$ROOT_DIR/$file" ]]; then
    echo "Missing required Codex plugin file: $file"
    exit 1
  fi
done

python3 - <<'PY'
import json
from pathlib import Path

for path in [
    '.codex-plugin/plugin.json',
    '.codex-plugin/marketplace.json',
]:
    json.loads(Path(path).read_text())
    print(f'valid: {path}')
PY

echo "Codex plugin validation passed"
