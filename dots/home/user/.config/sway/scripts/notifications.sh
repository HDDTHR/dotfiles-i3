#!/bin/bash

readarray -t app_summary_array < <(makoctl list | jq -r '.data[][] | "\(.["app-name"].data): \(.summary.data)"')
readarray -t id_array < <(makoctl list | jq -r '.data[][] | .id.data')

if [ -z "${app_summary_array[0]}" ]; then
    exit 0
fi

# Use 'wofi' to display a selection menu and capture the selected notification
selected_notification=$(printf "%s\n" "${app_summary_array[@]}" | wofi --conf="$HOME/.config/wofi/config.notifs" --style="$HOME/.config/wofi/style.widgets.css")

# Echo the selected notification
echo "$selected_notification"

