#!/bin/zsh

while true; do
	if [[ $(playerctl metadata title) != $(cat ~/scripts/music/song_playing) ]]; then
		if [[ $(playerctl -l) == "spotify_player" ]]; then
			~/scripts/music/notify_on_song_change.zsh
		fi
	fi
	sleep 0.5

done
