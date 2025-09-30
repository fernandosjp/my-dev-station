#!/bin/bash

if [ $# -eq 0 ]; then
	SUB=$(gum choose "Install Tools" "Install Optionals" "Install Dev Envs (future)" "Uninstall" "Quit" --height 10 --header "" | tr '[:upper:]' '[:lower:]')
else
	SUB=$1
fi

if [[ -n "$SUB" ]] && [[ "$SUB" != "quit" ]]; then
	INSTALLER=$(echo "$SUB" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/-(future)//g')
	source $OMAKUB_PATH/bin/omakub-sub/$INSTALLER.sh
elif
	# Clear and quit
	clear
fi


