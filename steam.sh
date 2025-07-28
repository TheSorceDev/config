#!/bin/bash

read -sp "Enter your sudo password: " PASS
echo

# Wait for password input to fully finish
sleep 1

echo "Installing Steam and NVIDIA drivers..."
echo "$PASS" | sudo -S pacman -Syu --noconfirm steam nvidia nvidia-utils lib32-nvidia-utils lib32-mesa lib32-vulkan-icd-loader
