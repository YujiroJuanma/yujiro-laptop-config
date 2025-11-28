#!/bin/zsh

seconds_elapsed=0
clear_screen_home=$'\033[2J\033[H'
while (( $seconds_elapsed < 1801)); do
  printf "$clear_screen_home$(figlet -t $seconds_elapsed)"
  seconds_elapsed=$(($seconds_elapsed + 1))
  sleep 1
done

loginctl poweroff
