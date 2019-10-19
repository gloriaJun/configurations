# !/bin/bash

clear
mode=$1

function _install() {
	local dir=$1
	
	chmod 755 ./$dir/install.sh
	./$dir/install.sh

	echo "######################################"
	echo "========= $dir Installed ========="
	echo "######################################"
}

function _result() {
	local result=$?
	local target=$1

	if [ $result -ne 0 ]; then
		echo "---- $target Install Error ---"
		exit -1;
	fi

	echo "######################################"
	echo "======== $target Installed =========="
	echo "######################################"
}

## install brew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#_result Hombebrew
#
#
## install via brew
#brew bundle --file=./brew/Brewfile
#_result Brewfile 
#if [ $mode -eq "home" ];then
#	brew bundle --file=./brew/Brewfile_home
#	_result Brewfile_home
#fi
#sh ./openApp.sh
#_result openApp

# configure iterm
_install iterm2 

# install zsh 
_install zsh 

# install xcode
_install xcode

# install git
_install git

# install git
_install vim
