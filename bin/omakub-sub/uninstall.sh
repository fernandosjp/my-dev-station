#!/bin/bash

UNINSTALLER=$(gum file $OMAKUB_PATH/uninstall --height 26 --header "Uninstall application")
[ -n "$UNINSTALLER" ] && gum confirm "Run uninstaller?" && source $UNINSTALLER && gum spin --spinner globe --title "Uninstall completed!" -- sleep 3
clear
source $OMAKUB_PATH/bin/omakub
