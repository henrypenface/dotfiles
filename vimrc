" vim config for @henrypenface / carlclegg@gmail.com
set shell=/bin/bash

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jeetsukumaran/vim-buffergator'

syntax enable
filetype plugin indent on

syntax on

set tabstop=4
set shiftwidth=4
set autoindent
set backspace=2
set expandtab

" Visual stuff
set laststatus=2
let g:lightline = { 'colorscheme': 'wombat', }
set cursorline
set wildmenu
set showmatch
set number 

set incsearch
set hlsearch

" File type shenanigans
au BufRead,BufNewFile *.dust set filetype=html

"Some remapping for speed
let mapleader = "\<Space>"

" Basic changes to use leader
nnoremap <Leader>. :o .<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :wq<CR>
" nnoremap <Leader>l :nohlsearch<CR>

" Window movement
nnoremap <Leader>h <c-w><Left>
nnoremap <Leader>l <c-w><Right>
nnoremap <Leader>k <c-w><Up>
nnoremap <Leader>j <c-w><Down>

" Plugin commands
nnoremap <Leader>u :GundoToggle<CR>
nnoremap <Leader>b :BuffergatorToggle<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>

" Some gui shizzle
if has('gui_running')
    colorscheme evening
    set guifont=Terminus:h9
    set guioptions-=T
endif

" Plugin Options
let NERDTreeQuitOnOpen=1
let g:buffergator_suppress_keymaps=1
