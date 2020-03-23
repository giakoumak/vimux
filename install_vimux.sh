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
	if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
		echo installing vim plugin manager and essential plugins...
		curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
			https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		cp "coc-settings.json" "$HOME/.vim"
		vim +'PlugInstall --sync' +qa
		echo vim plugin manager and essential plugins successfully installed!
	else
		echo vim plugin manager and essential plugins already installed!
	fi
elif [ "$1" = "--uninstall" ]; then
	rm -rf "$HOME/.vim"
	echo vim plugin manager and essential plugins successfully uninstalled!
	rm -f "$HOME/.vimrc"
	echo vim configuration file successfully uninstalled!
	rm -f "$HOME/.tmux.conf"
	echo tmux configuration file successfully uninstalled!
else
	usage
	exit 0
fi
