#!/bin/zsh

art=$(playerctl metadata mpris:artUrl)
song=$(playerctl metadata title)
artist=$(playerctl metadata artist)

#download the art

curl --output "/home/yujirodogma/scripts/music/art" $art

notify-send --icon="/home/yujirodogma/scripts/music/art" $artist $song -t 2000

echo $song > ~/scripts/music/song_playing

rm ~/scripts/music/art
