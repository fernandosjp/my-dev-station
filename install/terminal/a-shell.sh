#!/bin/zsh

# Configure the bash shell using Omakub defaults
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.bak
cp ~/.local/share/my-dev-station/configs/bashrc ~/.zshrc

# # Load the PATH for use later in the installers
# source ~/.local/share/my-dev-station/configs/bash/shell

# TODO: needs to understand how to migrate inputrc to zsh
# [ -f ~/.inputrc ] && mv ~/.inputrc ~/.inputrc.bak
# # Configure the inputrc using Omakub defaults
# cp ~/.local/share/my-dev-station/configs/inputrc ~/.inputrc
