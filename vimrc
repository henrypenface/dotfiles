" vim config for @i_am_cjc / carl@cjc.im
set shell=/bin/bash

set nocompatible
filetype off

syntax enable
filetype plugin indent on

syntax on

" Plugins
call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

set tabstop=4
set shiftwidth=4
set autoindent
set backspace=2
set expandtab

" Visual stuff
set laststatus=2
set cursorline
set wildmenu
set showmatch
set nonumber 

set incsearch
set hlsearch

"Some remapping for speed
let mapleader = "\<Space>"

" Basic changes to use leader
nnoremap <Leader>. :o .<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :wq<CR>
nnoremap <Leader>l :nohlsearch<CR>

imap jj <esc>

" Window movement
nnoremap <Leader><Left> <c-w><Left>
nnoremap <Leader><Right> <c-w><Right>
nnoremap <Leader><Up> <c-w><Up>
nnoremap <Leader><Down> <c-w><Down>

" Some gui shizzle
if has('gui_running')
    colorscheme evening
    set guifont=Terminus:h9
    set guioptions-=T
endif

""" Plugin specific options
" Guyo / Limelight for writing
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nnoremap <Leader>g :Goyo<CR>


