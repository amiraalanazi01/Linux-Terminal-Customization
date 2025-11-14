#!/bin/bash

logo_dir="$HOME/Pictures/fastfetch-logos"

if [ ! -d "$logo_dir" ]; then
  echo "⚠️ The folder $logo_dir does not exist!"
  exit 1
fi

random_logo=$(find "$logo_dir" -type f | shuf -n 1)

fastfetch --logo "$random_logo"
