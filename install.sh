# !/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "######################################"
echo "======== Homebrew Installed =========="
echo "######################################"

# install via brew
brew bundle --file=./Brewfile
echo "######################################"
echo "===== Brewfile Package Installed ====="
echo "######################################"
