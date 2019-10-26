" enable indent plugin
filetype plugin indent on
" turn syntax coloring on
syntax on
" set desert syntax coloring
:color desert
" enable filetype detection
:filetype on
" find as you type
set incsearch
" ignore case in search
set ignorecase
" ignore case when no letter is capital
set smartcase
" show line numbers
set number
" smart autoindenting on new line
set smartindent
" above 72,80-column width police
set colorcolumn=73,81
" police color
highlight ColorColumn ctermbg=238

" enable mouse support even for ultra wide screens if possible
set mouse=a
if has("mouse_sgr")
	set ttymouse=sgr
else
	set ttymouse=xterm2
end

" where plugins happen
execute pathogen#infect()

" autoload NERDTree with each new Vim instance 
autocmd vimenter * NERDTree
