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

" Search upwards of the current directory until finding a tags file
set tags=./tags;/

" Backups and swap files
set backup
set backupdir=~/.vim/temp
set dir=~/.vim/temp

" Kill this shit keybinding
map Q gq

" cscope stuff
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

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
autocmd FileType text setlocal spell
