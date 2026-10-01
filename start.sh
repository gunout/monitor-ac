#!/usr/bin/env bash

# Port par défaut ou passé en argument
PORT=${1:-8022}

# Fonction : teste si un port est libre
is_port_free() {
    ! lsof -i :"$1" >/dev/null 2>&1
}

# Trouve un port libre à partir du port demandé
while ! is_port_free "$PORT"; do
    echo "⚠️  Port $PORT occupé, essai sur $((PORT + 1))..."
    PORT=$((PORT + 1))
done

echo ""
echo "🇫🇷 Monitor Aides Carburant Pro"
echo "   → http://localhost:$PORT"
echo ""
echo "   Ctrl+C pour arrêter"
echo ""

python3 -m http.server "$PORT"
