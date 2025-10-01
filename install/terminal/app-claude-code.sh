#!/bin/bash

brew install --cask claude-code

# Warning:
# Claude Code's auto-updater installs updates to `~/.local/bin/claude` and
# not to Homebrew's location. It is recommended to disable the auto-updater
# with either `DISABLE_AUTOUPDATER=1` or
# `claude config set -g autoUpdates false` and use
# `brew upgrade --cask claude-code`.
claude config set -g autoUpdates false