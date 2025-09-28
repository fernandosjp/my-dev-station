#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Give people a chance to retry running the installation
trap 'echo "My Dev Station installation failed! You can retry by running: source ~/.local/share/omakub/install.sh"' ERR

# Check the distribution name and version and abort if incompatible
# source ~/.local/share/my-dev-station/install/check-version.sh

# Ask for app choices
echo "Get ready to make a few choices..."
source ~/.local/share/my-dev-station/install/terminal/required/app-gum.sh >/dev/null
source ~/.local/share/my-dev-station/install/first-run-choices.sh
source ~/.local/share/my-dev-station/install/identification.sh

# Install terminal tools
source ~/.local/share/my-dev-station/install/terminal.sh

# Install desktop tools and tweaks
source ~/.local/share/my-dev-station/install/desktop.sh
