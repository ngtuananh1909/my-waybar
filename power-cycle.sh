#!/bin/bash

current=$(powerprofilesctl get)

if [ "$current" == "power-saver" ]; then
    powerprofilesctl set balanced
    notify-send -t 2000 "⚖️ Balanced"
elif [ "$current" == "balanced" ]; then
    powerprofilesctl set performance
    notify-send -t 2000 "🚀Performance"
else
    powerprofilesctl set power-saver
    notify-send -t 2000 "🍃Power-Saver"
fi
