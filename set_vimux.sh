#!/bin/bash

if [ ! "$HOME/.vimrc" ]; then
	echo installing vim configuration file...
	cp "vimrc" "$HOME/.vimrc"
	echo vim configuration file successfully installed!
fi

if [ ! "$HOME/.tmux.conf" ]; then
	echo installing tmux configuration file...
	cp "tmux.conf" "$HOME/.tmux.conf"
	echo tmux configuration file successfully installed!
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
fi
