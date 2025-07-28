#!/bin/bash

read -sp "Enter your sudo password: " PASS
echo

echo "Installing Steam and NVIDIA drivers..."
sudo pacman -Syu --noconfirm steam nvidia nvidia-utils lib32-nvidia-utils lib32-mesa lib32-vulkan-icd-loader
