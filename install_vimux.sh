#!/bin/bash

usage()
{
	echo Usage:
	echo 	"sh install_vimux [--install|--uninstall]"
	echo
}

if [ "$#" -ne 1 ]; then
	usage
	exit 0
fi
if [ "$1" = "--install" ]; then
	if [ ! -f "$HOME/.vimrc" ]; then
		echo installing vim configuration file...
		cp "vimrc" "$HOME/.vimrc"
		echo vim configuration file successfully installed!
	else
		echo vim configuration file already installed!
	fi
	if [ ! -f "$HOME/.tmux.conf" ]; then
		echo installing tmux configuration file...
		cp "tmux.conf" "$HOME/.tmux.conf"
		echo tmux configuration file successfully installed!
	else
		echo tmux configuration file already installed!
	fi

	if [ ! -f "$HOME/.zshrc" ]; then
        	echo "Setting up zsh..."
		cp zshrc "$HOME/.zshrc" 
	else 
		echo "ZSH already configured..."
	fi

	if [ ! -d "$HOME/.vim" ]; then
		echo installing vim plugin manager and essential plugins...
		mkdir "$HOME/.vim"
		mkdir "$HOME/.vim/autoload"
		mkdir "$HOME/.vim/bundle"
		curl -LSso "$HOME/.vim/autoload/pathogen.vim" "https://tpo.pe/pathogen.vim"
		git clone "https://github.com/scrooloose/nerdtree" "$HOME/.vim/bundle/nerdtree"
		git clone "https://github.com/ervandew/supertab" "$HOME/.vim/bundle/supertab"
		git clone "https://github.com/Townk/vim-autoclose" "$HOME/.vim/bundle/vim-autoclose"
		echo vim plugin manager and essential plugins successfully installed!
	else
		echo vim plugin manager and essential plugins already installed!
	fi
elif [ "$1" = "--uninstall" ]; then
	rm -f "$HOME/.vimrc"
	echo vim configuration file successfully uninstalled!
	rm -f "$HOME/.tmux.conf"
	echo tmux configuration file successfully uninstalled!
	rm -rf "$HOME/.vim"
	echo vim plugin manager and essential plugins successfully uninstalled!
else
	usage
	exit 0
fi
