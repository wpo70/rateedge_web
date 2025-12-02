#!/bin/bash
echo "Starting RateEdge Australia Website..."
echo ""

if [ ! -f "index.html" ]; then
  echo "Error: index.html not found. Run this script from repo root."
  exit 1
fi

# Try Python3
if command -v python3 >/dev/null 2>&1; then
  echo "Found Python 3"
  echo "Starting server at http://localhost:8000"
  python3 -m http.server 8000
  exit 0
fi

# Try Python
if command -v python >/dev/null 2>&1; then
  echo "Found Python"
  echo "Starting server at http://localhost:8000"
  python -m http.server 8000
  exit 0
fi

# Try PHP
if command -v php >/dev/null 2>&1; then
  echo "Found PHP"
  echo "Starting server at http://localhost:8000"
  php -S localhost:8000
  exit 0
fi

echo "Opening index.html directly..."
open index.html 2>/dev/null || xdg-open index.html
