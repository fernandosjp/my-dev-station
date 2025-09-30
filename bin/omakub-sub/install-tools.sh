#!/bin/bash

# Ask for app choices
# echo "Get ready to make a few choices..."
# source ~/.local/share/my-dev-station/install/first-run-choices.sh

# Install terminal tools
source ~/.local/share/my-dev-station/install/terminal.sh

# Install desktop tools and tweaks
source ~/.local/share/my-dev-station/install/desktop.sh

gum spin --spinner globe --title "Install completed!" -- sleep 3

clear
source $OMAKUB_PATH/bin/omakub
