#!/bin/bash

# Restore original zshrc if backup exists
if [ -f ~/.zshrc.bak ]; then
  mv ~/.zshrc.bak ~/.zshrc
else
  rm -f ~/.zshrc
fi