#!/bin/bash

# Check if running on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
  echo ""  # True (macOS)
else
  echo "This installation is only on macOS."
  echo "Installation stopped."
  exit 1  # False (not macOS)
fi
