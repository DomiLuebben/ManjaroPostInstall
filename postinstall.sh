#!/usr/bin/env bash
#  Manjaro Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo -e "\nINSTALLING ADDITIONAL SOFTWARE\n"

echo -e "\INSTALLING FAKEROOT\n"
pacman -Sy fakeroot

echo -e "\INSTALLING YAY\n"
pacman -S yay

#Packages to install
PKGS=(
'awesome-terminal-fonts'
'binutils'
'gcc'
'google-chrome' # Chrome Browser
'dxvk-bin' # DXVK DirectX to Vulcan
'lightly-git'
'lightlyshaders-git'
'mangohud' # Gaming FPS Counter
'mangohud-common'
'nerd-fonts-fira-code'
'noto-fonts-emoji'
'spotify' # Music streaming
'ocs-url' # install packages from websites
'ttf-droid'
'ttf-hack'
'ttf-meslo' # Nerdfont package
'ttf-roboto'
'vlc'
'obs-studio'
'libreoffice-fresh'
'zoom' # video conferences
'lutris'
'gimp'
'krita'
'kvantum-qt5'
'latte-dock-git'
'teams'
'nextcloud-client'
'appappmenu-gtk-module'
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

#Packages to remove
PKGS=(
'yakuake'
'elisa'
'onlyoffice-desktopeditors'
'matray'
'k3b'


)

for PKG in "${PKGS[@]}"; do
    yay -R --noconfirm $PKG
done

echo -e "\nDone!\n"
exit
