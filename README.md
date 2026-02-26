# 🐧 My Custom Waybar for Hyprland

A minimalist, modern, and "anti-fat" Waybar configuration designed for Hyprland. Optimized for maximum screen real estate and aesthetics, specifically tailored for gaming laptops .

![Demo](img/Demo.png)

## ✨ Key Features

* **🎵 Integrated Music & Visualizer:** A custom Cava visualizer merged into the music "pill." The visualizer is smart: it only appears when music is actively playing.
* **⚡ Smart Power Management:** * **Left-click** the Battery icon to cycle through CPU power profiles: **Performance** 🚀 -> **Balanced** ⚖️ -> **Power-saver** 🍃.
    * Integrated system notifications to confirm profile changes.
* **🔋 Power Group:** Combines the system battery and `upower` (for peripherals like mice or headsets) into a single, clean module.
* **🏢 Dynamic Workspaces:** * 5 persistent workspaces by default.
    * Automatically extends when you navigate to new workspaces.
* **🖼️ Slim Window Title:** Automatically rewrites long window titles into smart icons (Firefox 󰈹, VS Code 󰨞, Terminal , etc.) to keep the bar thin and organized.
* **📅 Quick Calendar:** Left-click the Clock to launch a lightweight popup calendar (`gsimplecal`).

## 🚀 Installation

### 1. Install Dependencies
This configuration requires specific tools to function correctly. Run the following command in your terminal:

**For Ubuntu / Debian:**
```bash
sudo apt update && sudo apt install waybar playerctl cava gsimplecal upower libnotify-bin
```

**For Arch Linux / CachyOS:**
```bash
sudo pacman -S waybar playerctl cava gsimplecal upower libnotify
```
**2. Deploy Configuration

Run these commands to apply the configuration to your system:**

```bash
cd ~/.config

mv waybar waybar.bak 2>/dev/null

git clone [https://github.com/ngtuananh1909/my-waybar.git](https://github.com/ngtuananh1909/my-waybar.git) waybar

chmod +x ~/.config/waybar/*.sh

killall waybar; waybar &
```
**Project Structure

    config.jsonc: Main configuration file (Fixed arg-id for Ubuntu compatibility).

    style.css: Teal/Catppuccin-inspired minimalist styling.

    music.sh: Script to fetch current track metadata via playerctl.

    cava.sh: Script to pipe Cava frequency data to the Waybar module.

    power-cycle.sh: Script to toggle CPU power profiles and send notifications**
