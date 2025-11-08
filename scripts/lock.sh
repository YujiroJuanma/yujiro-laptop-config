#!/usr/bin/env bash

PICTURE=/tmp/i3lock.png
SCREENSHOT="grim $PICTURE"

BLUR="10x5" # Set blur intensity

$SCREENSHOT
magick $PICTURE -blur $BLUR $PICTURE
swaylock -i $PICTURE
rm $PICTURE # Removes the temporary image

