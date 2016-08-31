" Pathogen
execute pathogen#infect()

" Basic switches
set nocompatible
set number
set autoindent
set hlsearch
set cursorline

" Kill this shit keybinding
map Q gq

syntax enable

" Theme
if has('gui_running')
	set background=light
else
	set background=dark
endif
colorscheme solarized

filetype plugin indent on
autocmd FileType text setlocal textwidth=78
