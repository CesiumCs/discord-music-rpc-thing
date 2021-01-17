#!/bin/bash
# sometimes i use tabs and sometimes i use spaces but theres one thing that
# i do 100% of the time and thats not give a fuck
list_players() { # this just gets rid of the extra garbage on the end of kdeconnect
	playerctl -l |  sed 's/\.[^[[:blank:]]*//'
}
action=$1
# run through every player, and once we find one that's playing, echo its details
for i in $(list_players); do
	[[ "$action" == "song" ]] && echo $(playerctl metadata title -p $i)
	[[ "$action" == "artist" ]] && echo $(playerctl metadata artist -p $i)
done