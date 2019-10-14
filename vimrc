filetype plugin indent on 	" enable indent plugin
syntax enable			" enable syntax coloring
syntax on			" turn syntax coloring on
:color desert			" set desert syntax coloring
:filetype on			" enable filetype detection
set incsearch			" find as you type
set ignorecase			" ignore case in search
set smartcase			" only ignore case when all letters are lowercase
set number			" show line numbers
set smartindent			" smart autoindenting on new line

set mouse=a
if has("mouse_sgr")
	set ttymouse=sgr
else
	set ttymouse=xterm2
end

execute pathogen#infect()

autocmd vimenter * NERDTree
