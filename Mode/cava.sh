#!/bin/bash
# Script để chuyển dữ liệu cava sang waybar
pkill -f "cava -p ~/.config/waybar/cava_tmp"
cat << 'CONF' > ~/.config/waybar/cava_tmp
[general]
bars = 6
[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7
CONF
cava -p ~/.config/waybar/cava_tmp | while read -r line; do
    echo "$line" | sed 's/0/ /g;s/1/▂/g;s/2/▃/g;s/3/▄/g;s/4/▅/g;s/5/▆/g;s/6/▇/g;s/7/█/g'
done
