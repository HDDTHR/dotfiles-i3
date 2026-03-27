#!/bin/bash

script_dir="${HOME}/.scripts/"
scripts=$(ls "$script_dir" | sed 's/\.sh$//')
selected_script=$(echo "$scripts" | rofi -dmenu -p "Select script")

if [ -z "$selected_script" ]; then
    exit 1
fi

bash "$script_dir/$selected_script.sh"

