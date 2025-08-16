#!/bin/bash
echo "🔧 Installing dependencies..."
pip install --upgrade pip
pip install flask>=3.1.1 gunicorn>=23.0.0 openpyxl>=3.1.5 pytelegrambotapi>=4.28.0 requests>=2.32.4 trafilatura>=2.0.0
echo "✅ Dependencies installed successfully"