# Linux Terminal Customization

This project shows how to customize your Linux terminal using Fastfetch and custom scripts.  
All steps are illustrated with screenshots for clarity.

---

## Project Structure

linux-terminal-customization/

├── fastfetch-logos/

│   └── logo.txt

├── scripts/

│   └── anime-fetch.sh

├── screenshots/

│   └── (terminal screenshots)

└── README.md

---

## Bash Script Example

Here's a sample script `anime-fetch.sh` that randomly selects an ASCII logo and runs Fastfetch:

```bash
#!/bin/bash

# مجلد الرسومات ASCII
logo_dir="$HOME/Pictures/fastfetch-logos"

# التأكد من وجود المجلد
if [ ! -d "$logo_dir" ]; then
  echo "⚠️ المجلد $logo_dir غير موجود!"
  exit 1
fi

# اختيار شعار ASCII عشوائي
random_logo=$(find "$logo_dir" -type f | shuf -n 1)

# تشغيل fastfetch بالشعار المختار
fastfetch --logo "$random_logo"




