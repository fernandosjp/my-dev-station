#!/bin/bash

# Needed for all installers
brew install curl git unzip

# Run terminal installers
for installer in ~/.local/share/my-dev-station/install/cli/*.sh; do source $installer; done
