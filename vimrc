" Pathogen
execute pathogen#infect()

" Basic switches
set nocompatible
set number
set autoindent
set hlsearch
set cursorline

" Indentation with hard-tabs
set shiftwidth=8
set tabstop=8

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

filetype plugin indent on
autocmd FileType text setlocal textwidth=78
