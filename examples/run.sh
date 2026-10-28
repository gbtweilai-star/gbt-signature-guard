#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_signature_guard info
PYTHONPATH=src python -m gbt_signature_guard check --payload '{}'
PYTHONPATH=src python -m gbt_signature_guard run   --payload '{}'
