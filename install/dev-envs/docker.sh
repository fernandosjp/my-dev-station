#!/bin/bash
#
# Install docker colima to keep the stack opensource and license free
brew install docker colima
# Start service in background
brew services start colima

# Limit log size to avoid running out of disk
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json
