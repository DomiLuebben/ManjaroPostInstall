#!/usr/bin/env bash
#  Manjaro Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo -e "\nINSTALLING ADDITIONAL SOFTWARE\n"

echo "CLONING: YAY"
cd ~
git clone "https://aur.archlinux.org/yay.git"
cd ${HOME}/yay
makepkg -si --noconfirm
cd ~
touch "$HOME/.cache/zshhistory"
git clone "https://github.com/ChrisTitusTech/zsh"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/powerlevel10k
ln -s "$HOME/zsh/.zshrc" $HOME/.zshrc

#Packages to install
PKGS=(
'autojump'
'awesome-terminal-fonts'
'google-chrome' # Chrome Browser
'dxvk-bin' # DXVK DirectX to Vulcan
'github-desktop-bin' # Github Desktop sync
'lightly-git'
'lightlyshaders-git'
'mangohud' # Gaming FPS Counter
'mangohud-common'
'nerd-fonts-fira-code'
'nordic-darker-standard-buttons-theme'
'nordic-darker-theme'
'nordic-kde-git'
'nordic-theme'
'noto-fonts-emoji'
'papirus-icon-theme'
'sddm-nordic-theme-git'
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
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

#Packages to remove
PKGS=(
'yakuake'

)

for PKG in "${PKGS[@]}"; do
    yay -R --noconfirm $PKG
done

echo -e "\nDone!\n"
exit
