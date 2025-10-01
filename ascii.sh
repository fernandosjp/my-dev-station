#!/bin/bash

ascii_art='
   __  ___       ___             ______       __  _
  /  |/  /_ __  / _ \___ _  __  / __/ /____ _/ /_(_)__  ___
 / /|_/ / // / / // / -_) |/ / _\ \/ __/ _ `/ __/ / _ \/ _ \
/_/  /_/\_, / /____/\__/|___/ /___/\__/\_,_/\__/_/\___/_//_/
       /___/
'

# Define the color gradient
colors=(
	'\033[38;5;46m'  # Bright Green
	'\033[38;5;47m'  # Spring Green
	'\033[38;5;48m'  # Light Green
	'\033[38;5;49m'  # Aquamarine
	'\033[38;5;83m'  # Medium Green
	'\033[38;5;77m'  # Sea Green
	'\033[38;5;71m'  # Forest Green
)

# Reset color code
reset='\033[0m'

# Split by newlines (works in both bash and zsh)
lines=()
while IFS= read -r line; do
	lines+=("$line")
done <<< "$ascii_art"

# Print each line with the corresponding color
for i in "${!lines[@]}"; do
	color_index=$((i % ${#colors[@]}))
	echo "${colors[color_index]}${lines[i]}"
done
