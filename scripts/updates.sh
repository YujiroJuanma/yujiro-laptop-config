#!/bin/sh

 updates=$(/bin/xbps-install -Snu | wc -l)

if [ "$updates" -gt 0 ]; then
   echo "$updates updates available!"
else
    echo ""
fi
