# !/bin/bash

function _install() {
	local dir=$1
	
	chmod 755 ./$dir/install.sh
	./$dir/install.sh

	echo "######################################"
	echo "========= $dir Installed ========="
	echo "######################################"
}

## install brew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#echo "######################################"
#echo "======== Homebrew Installed =========="
#echo "######################################"

# install via brew
#brew bundle --file=./Brewfile
sh ./openApp.sh

echo "######################################"
echo "===== Brewfile Package Installed ====="
echo "######################################"


# configure iterm
_install iterm2 

# install zsh 
_install xcode

# install xcode
_install xcode
