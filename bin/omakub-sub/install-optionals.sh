#!/bin/bash

CHOICES=(
  "Discord           Communication platform for voice, video, and text messaging"
  "Ollama            Run LLMs, like Meta's Llama3, locally"
  "Spotify           Stream music from the world's most popular service"
  "Tailscale         Mesh VPN based on WireGuard and with Magic DNS"
  "Zed               Fast all-purpose editor"
  "> All             Re-run any of the default installers"
  "<< Back           "
)

CHOICE=$(gum choose "${CHOICES[@]}" --height 26 --header "Install application")

if [[ "$CHOICE" == "<< Back"* ]] || [[ -z "$CHOICE" ]]; then
  # Don't install anything
  echo ""
elif [[ "$CHOICE" == "> All"* ]]; then
  INSTALLER_FILE=$(gum file $OMAKUB_PATH/install)

  [[ -n "$INSTALLER_FILE" ]] &&
    gum confirm "Run installer?" &&
    source $INSTALLER_FILE &&
    gum spin --spinner globe --title "Install completed!" -- sleep 3
else
  INSTALLER=$(echo "$CHOICE" | awk -F ' {2,}' '{print $1}' | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

  case "$INSTALLER" in
  "ollama") INSTALLER_FILE="$OMAKUB_PATH/install/terminal/optional/app-ollama.sh" ;;
  "tailscale") INSTALLER_FILE="$OMAKUB_PATH/install/terminal/optional/app-tailscale.sh" ;;
  *) INSTALLER_FILE="$OMAKUB_PATH/install/desktop/optional/app-$INSTALLER.sh" ;;
  esac

  source $INSTALLER_FILE && gum spin --spinner globe --title "Install completed!" -- sleep 3
fi

clear
source $OMAKUB_PATH/bin/omakub
