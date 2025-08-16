#!/usr/bin/env python3
"""
Main application entry point for deployment
Serves the website API on port 5000 for Replit deployment
"""

import os
import sys
import threading
from datetime import datetime

# Add current directory to Python path
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# Import the Flask app from website_api
from website_api import app, init_database

def run_telegram_bot():
    """Run the Telegram bot in background if token is available"""
    try:
        bot_token = os.environ.get('BOT_TOKEN')
        if bot_token:
            print("🤖 Starting Telegram Bot service...")
            from main import main
            main()
        else:
            print("⚠️ BOT_TOKEN not found - Telegram bot disabled")
    except Exception as e:
        print(f"❌ Telegram Bot error: {e}")

# Initialize database
init_database()

# Start Telegram bot in background thread if token is available
if os.environ.get('BOT_TOKEN'):
    bot_thread = threading.Thread(target=run_telegram_bot, daemon=True)
    bot_thread.start()

# Export the Flask app for deployment
if __name__ == '__main__':
    # Run Flask app on PORT for deployment (Replit uses 5000 by default)
    port = int(os.environ.get('PORT', 5000))
    print(f"🚀 Starting Website API on port {port}")
    app.run(host='0.0.0.0', port=port, debug=False)