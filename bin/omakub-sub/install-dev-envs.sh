#!/bin/bash

echo "" # Add spacing
echo "                                 !! Not working due to docker installation"
echo "" # Add spacing

CHOICES=(
  "Dev Language      Install programming language environment"
  "Dev Database      Install development database in Docker"
  "<< Back           "
)

CHOICE=$(gum choose "${CHOICES[@]}" --height 8 --header "Install Dev Env")

if [[ "$CHOICE" == "<< Back"* ]] || [[ -z "$CHOICE" ]]; then
  # Don't install anything
  echo ""
else
  INSTALLER=$(echo "$CHOICE" | awk -F ' {2,}' '{print $1}' | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
  case "$INSTALLER" in
  "dev-language") INSTALLER_FILE="$OMAKUB_PATH/install/dev-envs/select-dev-language.sh" ;;
  "dev-database") INSTALLER_FILE="$OMAKUB_PATH/install/dev-envs/select-dev-storage.sh" ;;
  *) INSTALLER_FILE="$OMAKUB_PATH/install/desktop/optional/app-$INSTALLER.sh" ;;
  esac

  source $INSTALLER_FILE && gum spin --spinner globe --title "Install completed!" -- sleep 3
fi


clear
source $OMAKUB_PATH/bin/omakub
