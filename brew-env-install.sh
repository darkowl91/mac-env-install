#!/bin/sh

# Homebrew Script
# To execute: save and `chmod +x ./brew-env-install.sh` then `./brew-env-install.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask... 1/6"
brew install caskroom/cask/brew-cask

echo "Installing dev tools... 2/6"
brew install git
brew cask install github-desktop
brew cask install java
brew install jenv
brew install go
brew install svn
brew install maven
brew cask install intellij-idea
brew cask install visual-studio-code

echo "Instaling IM... 3/6"
brew cask install skype
brew cask install telegram

echo "Installing Web Browsers... 4/6"
brew cask install google-chrome

echo "Installing Entertaiment... 5/6"
brew cask install spotify
brew cask install vlc

echo "installing Tools... 6/6"
brew cask install the-unarchiver
brew cask install tunnelbear