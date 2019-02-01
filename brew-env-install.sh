#!/bin/sh

# Homebrew Script
# To execute: save and `chmod +x ./brew-env-install.sh` then `./brew-env-install.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew install caskroom/cask/brew-cask
# Dev
brew install git
brew cask install github-desktop
brew cask install java
brew install jenv
brew install go
brew install svn
brew install maven
brew cask install intellij-idea
brew cask install visual-studio-code
# Terminal
brew install fish
# IM
brew cask install skype
brew cask install telegram
# Browser
brew cask install google-chrome
# Entertainment
brew cask install spotify
brew cask install vlc
# Tools
brew cask install the-unarchiver
brew cask install tunnelbear