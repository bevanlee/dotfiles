" Pathogen
execute pathogen#infect()

" Basic switches
set nocompatible
set number
set autoindent
set hlsearch

" Kill this shit keybinding
map Q gq

syntax enable

" Theme
set background=dark
colorscheme solarized

filetype plugin indent on
autocmd FileType text setlocal textwidth=78
