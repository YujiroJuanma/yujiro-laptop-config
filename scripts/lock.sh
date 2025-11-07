#!/usr/bin/env bash

PICTURE=/tmp/i3lock.png
SCREENSHOT="scrot $PICTURE"

BLUR="10x5" # Set blur intensity

$SCREENSHOT
magick $PICTURE -blur $BLUR $PICTURE
i3lock -i $PICTURE
rm $PICTURE # Removes the temporary image

