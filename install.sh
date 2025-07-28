#!/bin/bash

echo "Removing old configs..."
rm -rf ~/.config/hypr ~/.config/wofi ~/.config/waybar

echo "Creating config directories..."
mkdir -p ~/.config

echo "Cloning full config repo temporarily..."
git clone --depth 1 https://github.com/TheSorceDev/config.git /tmp/config-temp

echo "Copying Hyprland config..."
mkdir -p ~/.config/hypr
cp /tmp/config-temp/hyprland.conf ~/.config/hypr/hyprland.conf

echo "Copying full wofi and waybar folders..."
cp -r /tmp/config-temp/wofi ~/.config/
cp -r /tmp/config-temp/waybar ~/.config/

echo "Cleaning up..."
rm -rf /tmp/config-temp

echo "All configs installed!"
echo "Reload Hyprland or restart your session to apply changes."
