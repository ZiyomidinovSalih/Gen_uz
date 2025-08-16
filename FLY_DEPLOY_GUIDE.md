# Fly.io Deploy Guide - Telegram Task Management Bot

## 1. Fly.io CLI o'rnatish

### Windows:
```bash
curl -L https://fly.io/install.ps1 | powershell
```

### macOS/Linux:
```bash
curl -L https://fly.io/install.sh | sh
```

## 2. Fly.io hisobiga kirish

```bash
fly auth login
```

## 3. Loyihani deploy qilish

### Loyiha katalogida quyidagi buyruqlarni bajaring:

```bash
# App yaratish
fly apps create telegram-task-bot

# Environment variables qo'shish (MUHIM!)
fly secrets set BOT_TOKEN=your_telegram_bot_token
fly secrets set ADMIN_CODE=1234
fly secrets set ADMIN_CHAT_ID=7792775986

# Deploy qilish
fly deploy
```

## 4. Monitoring va boshqarish

```bash
# Loglarni ko'rish
fly logs

# App holatini tekshirish  
fly status

# App to'xtatish
fly machine stop

# App ishga tushirish
fly machine start

# SSH orqali kirish
fly ssh console
```

## 5. Database va media fayllar

- SQLite database avtomatik yaratiladi
- Media fayllar `/app/media` da saqlanadi
- Backups `/app/backups` da

## 6. Narx va limitlar

- **Kichik loyihalar:** BEPUL (256MB RAM, 1 CPU)
- **Trafik:** 160GB/oy bepul
- **Domain:** `your-app-name.fly.dev`

## 7. Muhim eslatmalar

- BOT_TOKEN ni albatta qo'shing: `fly secrets set BOT_TOKEN=your_token`
- App 24/7 ishlaydi (auto-sleep yo'q)
- HTTPS avtomatik faollashadi
- Database ma'lumotlari app qayta ishga tushganda saqlanadi

## 8. Deploy muvaffaqiyatli bo'lgandan keyin

Sizning bot quyidagi URL'da ishlay boshlaydi:
`https://telegram-task-bot.fly.dev`

Website API test qilish:
`https://telegram-task-bot.fly.dev/api/health`

## Troubleshooting

Agar xatolik bo'lsa:
```bash
fly logs --app telegram-task-bot
```