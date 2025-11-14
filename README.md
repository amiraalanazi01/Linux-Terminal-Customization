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
Steps to Set Up

Step 1: Prepare Folders

Create the main folder and subfolders:

    fastfetch-logos/ → for logos

    scripts/ → for your scripts

    screenshots/ → for terminal screenshots


Step 2: Add Scripts

Place your custom scripts inside the scripts/ folder.

Example: anime-fetch.sh (see above)


Step 3: Add Logos

Place your ASCII logos inside fastfetch-logos/.


Step 4: Run the Scripts

Navigate to the scripts/ folder and run:

bash anime-fetch.sh

Step 5: Enjoy Your Custom Terminal

See your terminal customized with logos and outputs from your scripts.

Notes

    Make sure bash is installed.

    Ensure Fastfetch is installed on your system.

    Modify logos or scripts to personalize your terminal.

    Screenshots are optional but help show the steps clearly.


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









