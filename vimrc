"=============================================================================
" .vimrc 
" Bevan Lee
" engineering@bevanlee.net
" ----------------------------------------------------------------------------
" Plug-ins used:
" - pathogen (https://github.com/tpope/vim-pathogen)
" - solarized (http://ethanschoonover.com/solarized)
" - nerdtree (https://github.com/scrooloose/nerdtree)
" - fugitive (https://github.com/tpope/vim-fugitive)
" - airline (https://github.com/vim-airline/vim-airline)
"   -> requires powerline + patched fonts
"   	(https://github.com/powerline/powerline)
" - airline themes (https://github.com/vim-airline/vim-airline-themes)
"=============================================================================

" Pathogen
execute pathogen#infect()

" Basic switches
set nocompatible
syntax enable
set number
set autoindent
set hlsearch
set cursorline

" Indentation spacing
set shiftwidth=8
set tabstop=8
" Set switch for soft-tabs
set expandtab

" Search upwards of the current directory until finding a tags file
set tags=./tags;/

" Backups and swap files
set backup
set backupdir=~/.vim/temp
set dir=~/.vim/temp

" Kill this shit keybinding
map Q gq


" ================== Relative Numbering ======================================
" set the below switch if for some reason we start in the wrong mode
"set rnu

" Toggle relative numbering functions 
function! ToggleNumbersOn()
	set nu!
	set rnu
endfunction
function! ToggleRelativeOn()
	set rnu!
	set nu
endfunction

" set to absolute on loss of focus or insert mode
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

" add a hotkey for doing this manually
nnoremap <F6> :call ToggleRelativeOn()<CR>


" ================== cscope ==================================================
" if has('cscope')
"   set cscopetag cscopeverbose
" 
"   if has('quickfix')
"     set cscopequickfix=s-,c-,d-,i-,t-,e-
"   endif
" 
"   cnoreabbrev csa cs add
"   cnoreabbrev csf cs find
"   cnoreabbrev csk cs kill
"   cnoreabbrev csr cs reset
"   cnoreabbrev css cs show
"   cnoreabbrev csh cs help
" 
"   command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
" endif


" ================== Theme ===================================================
if has('gui_running')
	set background=light
	set lines=36 columns=84
        set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 10
else
	set background=dark
endif
colorscheme solarized
call togglebg#map("<F5>")

" highlight column boundary
if exists('+colorcolumn')
	set colorcolumn=78
endif


" ================== Airline =================================================
" show airline even if there isn't a split
set laststatus=2
" populate dictionary with proper font glyphs
let g:airline_powerline_fonts = 1


" ================== Plain Text ==============================================
" Automatic line breaks
filetype plugin indent on
autocmd FileType text setlocal textwidth=78
" Spell check
autocmd FileType text setlocal spl=en_au spell

