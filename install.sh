#!/bin/bash

SCRIPTPATH=$(pwd -P)

echo "Starting installation"

echo "Installing Brew"

{
  # go to downloads for further installations
  cd ~/Downloads

  #Install Brew
  sudo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  #Install Cask
  brew tap caskroom/cask

} > /dev/null

######################
# PACKAGES
######################

echo "Install Brew packages"

{
  # Brew
  brew install wget \
                 awscli \
                 bash-completion \
                 gradle \
                 maven

  # Brew Cask
  brew cask install google-chrome \
                      firefox \
                      spotify \
                      intellij-idea \
                      phpstorm \
                      atom \
                      pycharm \
                      docker \
                      docker-toolbox \
                      sourcetree \
                      java \
                      spectacle \
                      brave-browser \
                      visual-studio-code \
                      spectacle \

}

######################
# Zsh
######################

# oh-my-zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# spaceship theme
curl -fsSL https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.sh | zsh

cp ./.zshrc ~

######################
# Coding
######################

# NODE JS #

echo "Installing NodeJs"

  # nvm => https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04
  curl -fsSL https://raw.githubusercontent.com/creationix/nvm/master/install.sh -o install_nvm.sh
  sudo -u "$(whoami)" bash install_nvm.sh


