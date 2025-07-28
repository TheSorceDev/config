#!/bin/bash

echo "Removing old configs..."
rm -rf ~/.config/hypr ~/.config/wofi ~/.config/waybar

echo "Creating config directories..."
mkdir -p ~/.config/hypr ~/.config/wofi ~/.config/waybar

echo "Downloading Hyprland config..."
curl -Lo ~/.config/hypr/hyprland.conf https://raw.githubusercontent.com/TheSorceDev/config/main/hyprland.conf

echo "Downloading wofi config files..."
curl -Lo ~/.config/wofi/config https://raw.githubusercontent.com/TheSorceDev/config/main/wofi/config
curl -Lo ~/.config/wofi/style.css https://raw.githubusercontent.com/TheSorceDev/config/main/wofi/style.css

echo "Downloading waybar config files..."
curl -Lo ~/.config/waybar/config https://raw.githubusercontent.com/TheSorceDev/config/main/waybar/config
curl -Lo ~/.config/waybar/style.css https://raw.githubusercontent.com/TheSorceDev/config/main/waybar/style.css

echo "All configs installed!"
echo "Reload Hyprland or restart your session to apply changes."