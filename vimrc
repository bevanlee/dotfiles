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
	set lines=36 columns=83
else
	set background=dark
endif
colorscheme solarized
call togglebg#map("<F5>")

filetype plugin indent on
autocmd FileType text setlocal textwidth=78
