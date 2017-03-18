" Pathogen
execute pathogen#infect()

" Basic switches
set nocompatible
set number
set autoindent
set hlsearch
set cursorline
set tabstop=4
set shiftwidth=4

" Search upwards of the current directory until finding a tags file
set tags=./tags;/

" Backups and swap files
set backup
set backupdir=~/.vim/temp
set dir=~/.vim/temp

" Kill this shit keybinding
map Q gq

syntax enable

" Theme
if has('gui_running')
	set background=light
	set lines=36 columns=84
else
	set background=dark
endif
colorscheme solarized
call togglebg#map("<F5>")

" Automatic line breaks when writing in plaintext
filetype plugin indent on
autocmd FileType text setlocal textwidth=78
