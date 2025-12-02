@echo off
REM RateEdge Website Startup Script for Windows

echo Starting RateEdge Australia Website...
echo.

REM Check if index.html exists
if not exist "index.html" (
    echo Error: index.html not found. Please run this script from the repository root.
    pause
    exit /b 1
)

REM Try Python 3
where python3 >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Found Python 3
    echo Starting server at http://localhost:8000
    echo.
    echo Press Ctrl+C to stop the server
    echo.
    python3 -m http.server 8000
    exit /b 0
)

REM Try Python
where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Found Python
    echo Starting server at http://localhost:8000
    echo.
    echo Press Ctrl+C to stop the server
    echo.
    python -m http.server 8000
    exit /b 0
)

REM Try PHP
where php >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Found PHP
    echo Starting server at http://localhost:8000
    echo.
    echo Press Ctrl+C to stop the server
    echo.
    php -S localhost:8000
    exit /b 0
)

REM Try http-server
where http-server >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Found http-server (Node.js)
    echo Starting server at http://localhost:8080
    echo.
    echo Press Ctrl+C to stop the server
    echo.
    http-server
    exit /b 0
)

REM No suitable method found - try to open directly
echo Could not find Python, PHP, or Node.js http-server
echo.
echo Opening index.html directly in your default browser...
start index.html
echo.
echo If the page doesn't open, you can:
echo  1. Double-click index.html in File Explorer
echo  2. Install Python from https://www.python.org/downloads/
echo  3. Then run this script again
echo.
pause
