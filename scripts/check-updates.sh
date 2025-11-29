#!/bin/sh

# Update package lists (simulated)
# This just checks if new lists are available without downloading packages
sudo apt-get update > /dev/null

# Count the number of upgradable packages
updates=$(apt-get upgrade -s 2>/dev/null | grep -P '^\d+ upgraded' | cut -d' ' -f1)

if [ -z "$updates" ] || [ "$updates" -eq 0 ]; then
  echo '{"text": "✅ Up to date  "}'
else
  echo '{"text": "📦 '$updates' updates  ", "class": "pending-updates"}'
fi
