#!/usr/bin/env bash
PORT=${1:-8000}
echo "Demarrage du Monitor Aides Carburant"
echo "  -> http://localhost:${PORT}"
python3 -m http.server "$PORT"
