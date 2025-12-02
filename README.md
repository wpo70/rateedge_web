# RateEdge Australia Website

This repository contains the RateEdge Australia website - a static HTML website for institutional rates desks tools.

## Quick Start 🚀

### Easiest Method: Use the Startup Scripts

**Windows:**
```bash
start.bat
```
Double-click `start.bat` or run it from Command Prompt. It will automatically start a local web server or open the file in your browser.

**Mac/Linux:**
```bash
./start.sh
```
Or simply:
```bash
bash start.sh
```

The script will:
1. Automatically detect if you have Python, PHP, or Node.js installed
2. Start a local web server on `http://localhost:8000`
3. Show you the URL to open in your browser

---

## Alternative Methods

### Method 1: Open Directly in Browser (Simplest)

Simply open the `index.html` file in your web browser:

**Windows:**
- Double-click `index.html` in File Explorer
- Or right-click → "Open with" → Choose your browser

**Mac:**
- Double-click `index.html`
- Or right-click → "Open With" → Choose your browser

**Linux:**
- Double-click `index.html`
- Or run: `xdg-open index.html`

**Note:** This method works perfectly for this static website since it doesn't require any server-side processing.

### Method 2: Using Python's Built-in HTTP Server

If you have Python installed, you can serve the website using Python's built-in HTTP server:

**For Python 3:**
```bash
python3 -m http.server 8000
```

**For Python 2:**
```bash
python -m SimpleHTTPServer 8000
```

Then open your browser and visit: `http://localhost:8000`

### Method 3: Using Node.js http-server

If you have Node.js installed, you can use the `http-server` package:

1. Install http-server globally (one-time setup):
   ```bash
   npm install -g http-server
   ```

2. Run the server:
   ```bash
   http-server -p 8000
   ```

3. Open your browser and visit: `http://localhost:8000`

### Method 4: Using PHP's Built-in Server

If you have PHP installed:

```bash
php -S localhost:8000
```

Then open your browser and visit: `http://localhost:8000`

---

## Troubleshooting 🔧

### "The website doesn't open"

1. **If you double-clicked index.html:**
   - The file should open directly in your default browser
   - If it opens in a text editor instead, right-click → "Open With" → Choose a browser (Chrome, Firefox, Edge, Safari)

2. **If you're using a local server (Python/PHP/Node):**
   - Make sure the server is running (you should see a message like "Serving HTTP on 0.0.0.0 port 8000")
   - Open your browser and type: `http://localhost:8000`
   - **Don't forget the `http://` prefix**
   - If port 8000 is busy, try a different port: `python3 -m http.server 8080` (then visit `http://localhost:8080`)

3. **Check for errors:**
   - If you see an error message, make sure you're in the correct directory (the folder containing `index.html`)
   - Run `ls` (Mac/Linux) or `dir` (Windows) to verify `index.html` is there

4. **Still not working?**
   - Try the startup scripts: `./start.sh` (Mac/Linux) or `start.bat` (Windows)
   - They will guide you through the process

### Common Issues

**"Command not found" or "python3 is not recognized"**
- You need to install Python first: https://www.python.org/downloads/
- On Windows, make sure to check "Add Python to PATH" during installation

**"Port already in use"**
- Another program is using port 8000
- Try a different port: `python3 -m http.server 8080`
- Or stop the other server: `pkill -f http.server` (Mac/Linux) or restart your computer

**Browser shows "Unable to connect" or "Can't reach this page"**
- Make sure the server is still running in the terminal/command prompt
- Try typing the URL manually: `http://localhost:8000`
- Check your browser's address bar - it should show `localhost` not `file://`

---

## About the Website

RateEdge Australia provides tools for institutional AUD interest rate desks, including:

- **Swaption Pricer**: Ticket-based AUD swaption pricing with configurable parameters
- **RateEdge OMS**: Order and execution management for swaps, swaptions, caps and floors
- **Historical Data Portal**: Curated AUD rates and volatility history

## Technology Stack

This is a static website built with:
- Pure HTML5
- CSS3 (embedded in the HTML file)
- Vanilla JavaScript (no external dependencies)

## Browser Compatibility

The website works on all modern browsers including:
- Chrome/Edge
- Firefox
- Safari
- Opera

## Contact

For institutional enquiries or to request a demo: [info@rateedge.au](mailto:info@rateedge.au)

## License

© RateEdge Australia. All rights reserved.
