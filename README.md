
# Linux Terminal Customization

This project shows how to customize your Linux terminal using Fastfetch and custom scripts.  
All steps are illustrated with screenshots for clarity.

---

## Project Structure

```
linux-terminal-customization/
├── scripts/
│   └── anime-fetch.sh
├── screenshots/
│   └── (terminal screenshots)
└── README.md
```

> Note: The Fastfetch logos folder is located at `~/Pictures/fastfetch-logos`.  
> Make sure you have your ASCII logos inside this folder.

---

## Steps to Set Up

### Step 1: Prepare Folders
- `scripts/` → for your scripts
- `screenshots/` → for terminal screenshots (optional)

### Step 2: Add Scripts
Place your custom scripts inside the `scripts/` folder.  
Example: `anime-fetch.sh` (see below)

### Step 3: Add Logos
Place your ASCII logos inside `~/Pictures/fastfetch-logos/`.

### Step 4: Run the Scripts
Navigate to the `scripts/` folder and run:
```bash
bash anime-fetch.sh
```

### Step 5: Enjoy Your Custom Terminal
See your terminal customized with logos and outputs from your scripts.

---

### Notes
- Make sure `bash` is installed.
- Ensure Fastfetch is installed on your system.
- Modify logos or scripts to personalize your terminal.
- Screenshots are optional but help show the steps clearly.

---

## Bash Script Example

Here's the `anime-fetch.sh` script pointing to the correct logos folder:

```bash
#!/bin/bash

# Folder containing ASCII logos
logo_dir="$HOME/Pictures/fastfetch-logos"

# Check if folder exists
if [ ! -d "$logo_dir" ]; then
  echo "⚠️ The folder $logo_dir does not exist!"
  exit 1
fi

# Pick a random ASCII logo
random_logo=$(find "$logo_dir" -type f | shuf -n 1)

# Run Fastfetch with the selected logo
fastfetch --logo "$random_logo"
```
