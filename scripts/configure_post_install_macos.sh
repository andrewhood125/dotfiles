#!/usr/bin/env bash
# 

# Remove lots of apps from the dock
defaults read com.apple.dock persistent-apps

# Remove other entries on the dock
defaults delete com.apple.dock persistent-others

# Remove recent apps from dock
defaults write com.apple.dock show-recents 0
defaults delete com.apple.dock recent-apps

# Put the dock on the left
defaults write com.apple.dock orientation left

echo "System Preferences > Keyboard > Modifiers > [Change Caps Lock to Escape]"

echo "Download 1Password"

echo "Install XCode"

echo "Install Google Chrome"

echo "Install Things"

mkdir ~/Code

sudo xcodebuild -license

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install dots from dotfiles
cd ~/Code && git clone https://github.com/andrewhood125/dotfiles
cp dots/.* ~/

echo "Install Source Code Pro Font https://fonts.google.com/specimen/Source+Code+Pro"

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Install vim plugins :PlugInstall"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install vim

echo "Add keyboard shortcuts for enter and exit full screen for terminal app"

echo "Lower screen resolution"

echo "Allow 1Password in incognito"

echo "Disable hot corner new note"

echo "Install Spotify"

brew install node

echo "Turn dock hiding on"

echo "Turn off Mission Control Trackpad shortcut gesture"

brew install tmux

echo "Download and Install Kapeli Dash"
