read -sp "Enter your sudo password: " PASS
echo
echo "$PASS" | sudo -S pacman -Syu steam nvidia nvidia-utils lib32-nvidia-utils lib32-mesa lib32-vulkan-icd-loader
