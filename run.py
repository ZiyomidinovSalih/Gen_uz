#!/usr/bin/env python3
"""
Production runner for the Telegram Bot Management System
Runs the main bot and website API services
"""

import os
import sys
import time
import threading
from datetime import datetime

# Add current directory to Python path
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def run_website_api():
    """Run the website API service"""
    try:
        print("🌐 Starting Website API service...")
        from website_api import app, init_database
        
        # Initialize database
        init_database()
        
        # Run on port 5000 for deployment
        port = int(os.environ.get('PORT', 5000))
        app.run(host='0.0.0.0', port=port, debug=False)
        
    except Exception as e:
        print(f"❌ Website API error: {e}")
        sys.exit(1)

def run_telegram_bot():
    """Run the Telegram bot service"""
    try:
        print("🤖 Starting Telegram Bot service...")
        from main import main
        main()
        
    except Exception as e:
        print(f"❌ Telegram Bot error: {e}")
        # Don't exit, let website API continue running
        print("⚠️ Continuing with Website API only...")

def main():
    """Main runner function"""
    print("🚀 Starting Telegram Bot Management System...")
    
    # Check if BOT_TOKEN is available
    bot_token = os.environ.get('BOT_TOKEN')
    
    if bot_token:
        print("✅ BOT_TOKEN found - starting both services")
        
        # Start bot in background thread
        bot_thread = threading.Thread(target=run_telegram_bot, daemon=True)
        bot_thread.start()
        
        # Give bot time to start
        time.sleep(2)
        
    else:
        print("⚠️ BOT_TOKEN not found - starting Website API only")
        print("💡 Add BOT_TOKEN environment variable to enable Telegram bot")
    
    # Start website API (main service for deployment)
    run_website_api()

if __name__ == "__main__":
    main()