#!/usr/bin/env bash
set -Eeuo pipefail
pacman-key --init && pacman-key --populate
curl -Ls https://gist.github.com/koumaza/afbcb7d36c629636d5c6c14a45317d4c/raw/7f17d171e19fb54190d51bb72d20c9fc0e048c32/pacman.conf > /etc/pacman.conf
pacman -Syyuuv --noconfirm --needed --color always \
  archlinux-keyring base base-devel sudo repo git git-lfs python-pip go zstd
useradd -md /home/repo -p repo repo && echo 'repo ALL=NOPASSWD:ALL' >> /etc/sudoers
su repo -c "
  git clone https://aur.archlinux.org/yay-git.git --depth=1 --single-branch ~/.yay-git-aur && export ____pwdchan=$PWD && cd ~/.yay-git-aur && yes|makepkg -si && cd $____pwdchan
  yes ''|yay -Syyuu --needed --devel --timeupdate \
    linux-tools-meta \
    android-sdk android-sdk-platform-tools android-udev aosp-devel bc bison ccache curl esd-oss flex gcc-libs-multilib gcc-multilib git gnupg gperf inetutils jdk-openjdk lld lib32-gcc-libs lib32-glibc lib32-libusb lib32-libusb-compat lib32-ncurses lib32-ncurses5-compat-libs lib32-readline lib32-zlib libpng libtool-multilib libusb libusb-compat libxslt mesa multilib-devel ncurses ncurses5-compat-libs perl perl-switch pngcrush python2 readline repo rsync schedtool sdl squashfs-tools tcp_wrappers termcap unzip wxgtk zip zlib lib32-libpng xcur2png gnuplot ttf-droid ttf-dejavu fontconfig
  yes ''|yay -Sccc
echo 'Tools are Installed by "env.sh"'
"
