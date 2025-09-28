#!/bin/bash

brew install --cask visual-studio-code

mkdir -p ~/Library/Application\ Support/Code/User
cp ~/.local/share/my-dev-station/configs/vscode.json ~/Library/Application\ Support/Code/User/settings.json
