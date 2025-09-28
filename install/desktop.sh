#!/bin/bash

# Run desktop installers
for installer in ~/.local/share/my-dev-station/install/desktop/*.sh; do source $installer; done