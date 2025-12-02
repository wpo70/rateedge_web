# RateEdge Australia Website

This repository contains the RateEdge Australia website - a static HTML website for institutional rates desks tools.

## How to Run the Website

There are several ways to view and run this website locally:

### Method 1: Open Directly in Browser (Simplest)

Simply open the `index.html` file in your web browser:

1. Navigate to the repository folder
2. Double-click on `index.html` or right-click and select "Open with" your preferred browser
3. The website will open in your browser

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
   http-server
   ```

3. Open your browser and visit the URL shown (typically `http://localhost:8080`)

### Method 4: Using PHP's Built-in Server

If you have PHP installed:

```bash
php -S localhost:8000
```

Then open your browser and visit: `http://localhost:8000`

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
