#! /bin/bash

# Install basic utilities
sudo pacman -S --noconfirm \
  neofetch \
  vim \
  curl \
  htop \
  feh \
  scrot \
  flameshot \
  slock \
  base-devel \
  git \
  libx11 \
  libxft \
  xorg-server \
  xorg-input \
  xcompmgr \
  xautolock \
  xorg-xrandr \
  pipewire \
  wireplumber \
  pipewire-pulse \
  alsa-utils \
  noto-fonts \
  noto-fonts-cjk \
  noto-fonts-emoji \
  fcitx5-im \
  fcitx5-chewing \
  fcitx5-mozc \
  fcitx5-qt \
  fcitx5-gtk \
  fcitx5-chinese-addons \
  ufw \
  brightnessctl \
  keepassxc && \

# DWM git clone
mkdir ~/.suckless && \

git clone https://github.com/greentea135/dwm-dotfiles ~/.suckless && \

# DWM make install
cd ~/.suckless/dwm && sudo make clean install && \

cd ~/.suckless/st && sudo make clean install && \

cd ~/.suckless/dmenu && sudo make clean install && \

cd ~/.suckless/dwmblocks && sudo make clean install && \

# .xinitrc
echo "
dwmblocks &

~/.fehbg &

xcompmgr &

xautolock -time 5 -locker slock -corners 0-00 &

fcitx5 &

exec dwm
" > ~/.xinitrc && \

# startx
startx
