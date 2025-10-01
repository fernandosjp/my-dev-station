#!/bin/bash

DEV_PATH="$HOME/code"
SOURCE_FOLDER=$DEV_PATH/my-dev-station

# Script to copy under develoment script to .local folder and start after boot.sh
rm -rf ~/.local/share/my-dev-station
cp -r "$SOURCE_FOLDER" ~/.local/share/my-dev-station
sh ~/.local/share/my-dev-station/install.sh