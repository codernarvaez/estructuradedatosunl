#!/usr/bin/env bash
# Publicación manual a la rama gh-pages (alternativa al workflow de GitHub Actions).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

quarto publish gh-pages --no-prompt
