#!/bin/sh
num=$(brillo -G)
rounded_num=$(echo "scale=0; ($num + 0.5) / 1" | bc)
echo " $rounded_num"
