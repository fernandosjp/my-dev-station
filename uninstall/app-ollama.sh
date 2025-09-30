#!/bin/bash

# Note: Ollama doesn't provide an official uninstall script
# Manual cleanup is required

# Stop and remove Ollama service
sudo systemctl stop ollama 2>/dev/null
sudo systemctl disable ollama 2>/dev/null
sudo rm -f /etc/systemd/system/ollama.service

# Remove Ollama binary
sudo rm -f /usr/local/bin/ollama

# Remove Ollama data
rm -rf ~/.ollama