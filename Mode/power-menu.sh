cat << 'EOF' > ~/.config/waybar/power-cycle.sh
#!/bin/bash

# Lấy chế độ năng lượng hiện tại
current=$(powerprofilesctl get)

# Đổi sang chế độ tiếp theo theo vòng lặp
if [ "$current" == "power-saver" ]; then
    powerprofilesctl set balanced
elif [ "$current" == "balanced" ]; then
    powerprofilesctl set performance
else
    powerprofilesctl set power-saver
fi
EOF
chmod +x ~/.config/waybar/power-cycle.sh