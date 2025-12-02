#!/bin/bash

# RateEdge Website Startup Script
# This script will automatically detect and use an available method to serve the website

echo "🚀 Starting RateEdge Australia Website..."
echo ""

# Check if we're in the correct directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the repository root."
    exit 1
fi

# Function to check if a port is available
check_port() {
    if command -v nc &> /dev/null; then
        nc -z localhost $1 2>/dev/null
        return $?
    elif command -v lsof &> /dev/null; then
        lsof -i :$1 >/dev/null 2>&1
        return $?
    else
        # Skip check if neither command is available
        return 1
    fi
}

PORT=8000

# Check if port is already in use
if check_port $PORT; then
    echo "⚠️  Port $PORT is already in use. The website might already be running."
    echo "   Visit: http://localhost:$PORT"
    echo ""
    echo "   To stop any running server, run: pkill -f 'http.server|http-server|php.*localhost'"
    exit 1
fi

# Try Python 3
if command -v python3 &> /dev/null; then
    echo "✅ Found Python 3"
    echo "🌐 Starting server at http://localhost:$PORT"
    echo ""
    echo "   Press Ctrl+C to stop the server"
    echo ""
    python3 -m http.server $PORT
    exit 0
fi

# Try Python 2
if command -v python &> /dev/null; then
    echo "✅ Found Python 2"
    echo "🌐 Starting server at http://localhost:$PORT"
    echo ""
    echo "   Press Ctrl+C to stop the server"
    echo ""
    python -m SimpleHTTPServer $PORT
    exit 0
fi

# Try PHP
if command -v php &> /dev/null; then
    echo "✅ Found PHP"
    echo "🌐 Starting server at http://localhost:$PORT"
    echo ""
    echo "   Press Ctrl+C to stop the server"
    echo ""
    php -S localhost:$PORT
    exit 0
fi

# Try Node.js http-server
if command -v http-server &> /dev/null; then
    echo "✅ Found http-server (Node.js)"
    echo "🌐 Starting server at http://localhost:$PORT"
    echo ""
    echo "   Press Ctrl+C to stop the server"
    echo ""
    http-server -p $PORT
    exit 0
fi

# No suitable method found
echo "❌ Could not find Python, PHP, or Node.js http-server"
echo ""
echo "Please install one of the following:"
echo "  - Python 3: https://www.python.org/downloads/"
echo "  - PHP: https://www.php.net/downloads"
echo "  - Node.js http-server: npm install -g http-server"
echo ""
echo "Or simply open index.html directly in your browser:"
echo "  - Windows: Double-click index.html"
echo "  - Mac: Right-click index.html → Open With → Browser"
echo "  - Linux: xdg-open index.html"
exit 1
