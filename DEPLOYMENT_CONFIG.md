# Deployment Configuration for Telegram Bot Management System

## For Replit Deployment (Recommended)

### Build Command:
```bash
pip install -r requirements.txt
```
Note: Dependencies are already configured via `pyproject.toml`, so this will install automatically.

### Run Command:
```bash
python main_app.py
```
OR for production with Gunicorn:
```bash
gunicorn main_app:app --host 0.0.0.0 --port $PORT
```

### Deployment Steps:

1. **Set Environment Variables:**
   - `BOT_TOKEN` - Your Telegram bot token (from @BotFather)
   - `ADMIN_CODE` - Admin authentication code (optional, defaults to "1234")
   - `ADMIN_CHAT_ID` - Admin's Telegram chat ID (optional, defaults to configured value)

2. **Deploy on Replit:**
   - Click "Deploy" in the workspace header
   - Choose "Autoscale" deployment
   - Configure machine resources (1vCPU, 2 GiB RAM recommended)
   - Set maximum machines to 3
   - Click "Deploy"

3. **Access Your Application:**
   - Website API will be available at your deployment URL
   - Telegram bot will start automatically if `BOT_TOKEN` is provided
   - Health check endpoint: `/health`
   - API documentation: `/` (root path)

## Application Architecture

### Services:
- **Website API** (Port 5000): Customer inquiry system, API endpoints
- **Telegram Bot**: Task management, employee communication
- **Database**: SQLite with automatic initialization

### Key Features:
- Customer inquiry system via website and Telegram
- Employee task management and tracking
- Excel report generation
- Media file handling (photos, videos, voice)
- Location sharing and tracking
- Debt management system
- Real-time admin notifications

## Environment Variables Required:
- `BOT_TOKEN` (Required for Telegram bot functionality)
- `ADMIN_CODE` (Optional: admin authentication, default: "1234")
- `ADMIN_CHAT_ID` (Optional: admin's Telegram chat ID)
- `PORT` (Automatically set by deployment platform)

## Health Monitoring:
- `/health` - Simple health check
- `/api/health` - Detailed health status with timestamp

The application will run with just the Website API if `BOT_TOKEN` is not provided, allowing for partial functionality during setup.