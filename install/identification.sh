#!/bin/bash

export OMAKUB_USER_NAME=$(gum input --placeholder "Enter full name" --value "$SYSTEM_NAME" --prompt "Name> ")
export OMAKUB_USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")
