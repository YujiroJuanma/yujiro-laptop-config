#!/bin/zsh

art=$(playerctl metadata mpris:artUrl)
song_name=$(playerctl metadata title)
song_artist=$(playerctl metadata artist)

curl --output ~/scripts/music/art $art

notify-send --urgency=normal --app-name="Song Change" -t 2000 -i ~/scripts/music/art $song_artist $song_name

echo $song_name > ~/scripts/music/song_playing

rm ~/scripts/music/art
