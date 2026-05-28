#!/usr/bin/env bash
# Vista previa local del sitio (misma salida que GitHub Pages).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo "→ Renderizando HTML..."
quarto render --to html

PORT="${PORT:-8000}"
echo ""
echo "→ Sirviendo _book/ en http://127.0.0.1:${PORT}/"
echo "  (Ctrl+C para detener)"
cd _book
python3 -m http.server "$PORT"
