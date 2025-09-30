#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Give people a chance to retry running the installation
trap 'echo "My Dev Station installation failed! You can retry by running: source ~/.local/share/my-dev-station/install.sh"' ERR

# Check the distribution name and version and abort if incompatible
source ~/.local/share/my-dev-station/install/check-version.sh

# Ask for identification to set up git
echo "Enter identification for git and autocomplete..."
source ~/.local/share/my-dev-station/install/identification.sh >/dev/null

# Install CLI
source ~/.local/share/my-dev-station/install/cli.sh >/dev/null

# Start app
clear
export OMAKUB_PATH=$HOME/.local/share/my-dev-station
source $OMAKUB_PATH/bin/omakub

