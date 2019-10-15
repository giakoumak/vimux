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

" above 80-column width police
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

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
