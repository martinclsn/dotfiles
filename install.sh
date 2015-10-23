#!/bin/bash

DOTFILES_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function link {
	local FILE=$1
	ln -s -f $DOTFILES_DIR/$FILE ~/$FILE	
}

link .bashrc
link .bash_profile
link .aliases
link .functions

touch ~/.bash_extra