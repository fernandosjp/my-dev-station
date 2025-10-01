#!/bin/zsh

set -e

ascii_art='
   __  ___       ___             ______       __  _
  /  |/  /_ __  / _ \___ _  __  / __/ /____ _/ /_(_)__  ___
 / /|_/ / // / / // / -_) |/ / _\ \/ __/ _ `/ __/ / _ \/ _ \
/_/  /_/\_, / /____/\__/|___/ /___/\__/\_,_/\__/_/\___/_//_/
       /___/
'

echo -e "$ascii_art"
echo "=> My Dev Station is for fresh macOS installtion only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

# NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" >/dev/null
brew install git >/dev/null

echo "Cloning My Dev Station..."
rm -rf ~/.local/share/my-dev-station
git clone https://github.com/fernandosjp/my-dev-station.git ~/.local/share/my-dev-station >/dev/null

echo "Installation starting..."
source ~/.local/share/my-dev-station/install.sh
