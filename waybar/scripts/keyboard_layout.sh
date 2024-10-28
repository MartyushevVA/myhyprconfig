#!/bin/bash

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if ["$current_layout" = "us"]; then
    echo "EN"
elif ["$current_layout" = "ru"]; then
    echo "RUS"
else
    echo "$current_layout"
fi
