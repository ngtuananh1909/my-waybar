#!/bin/bash
export PATH=/usr/bin:/bin:$PATH

# Lấy thẳng tên bài và ca sĩ, không dùng ngoặc nhọn format
TITLE=$(playerctl metadata xesam:title 2>/dev/null)
ARTIST=$(playerctl metadata xesam:artist 2>/dev/null)

if [ "$TITLE" != "" ]; then
    echo "$TITLE - $ARTIST"
else
    echo "No Music"
fi
