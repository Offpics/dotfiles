#!/bin/bash

declare -a packages=("git" "tmux" "vim" "ffmpeg" "htop" "fish" "nodejs" "haskell-platform" "keepassxc" "syncthing" "krita" "peek" "xclip" "spotify-client" "libgit2" "ncdu" "bat" "pdfgrep" "fd-find" "ripgrep")

mkdir -p ~/debs

# Node JS
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

# Syncthing
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list


sudo apt update

for package in "${packages[@]}"; do
  sudo apt install -y --no-upgrade "$package";
done

# TLDR
sudo npm install -g tldr

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# Exa
sudo cargo install exa

# Discord
curl -o ~/debs/discord.deb -L "https://discordapp.com/api/download?platform=linux&format=deb"

# Dropbox
curl -o ~/debs/dropbox.deb -L "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb"

# Anaconda
curl -o ~/debs/anaconda.sh -L "https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh"

# VS Code
curl -o ~/debs/vscode.deb -L "https://go.microsoft.com/fwlink/?LinkID=760868"

# Spotify
curl -o ~/debs/skype.deb -L "https://go.skype.com/skypeforlinux-64.deb"

