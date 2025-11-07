#!/bin/zsh

while true; do
  if [[ $(playerctl -l) == "hifirs" ]]; then
    song_playing=$(playerctl metadata title)
    if [[ $song_playing != $(/bin/cat /home/yujirodogma/scripts/music/song_playing) ]]; then
      echo "Song changed!!"
      ~/scripts/music/song_change_notify.zsh
    fi
  fi
  sleep 1
done
