#!/usr/bin/env bash
# ~/.config/waybar/scripts/waybar-openapps.sh
choice=$(printf "Browser\nFile Manager\nEmail\nSettings" | rofi -dmenu -i -p "Open app:")
case "$choice" in
  "Browser") firefox ;;
  "File Manager") thunar ;;
  "Email") thunderbird ;;
  "Settings") ~/.config/ml4w/settings/waybar-quicklinks.sh ;;  # or whatever
esac

