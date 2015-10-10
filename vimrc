" vim config for @henrypenface / carlclegg@gmail.com
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'sjl/gundo.vim'

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

set incsearch
set hlsearch

" File type shenanigans
au BufRead,BufNewFile *.dust set filetype=html

"Some remapping for speed
let mapleader = "\<Space>"

nnoremap <Leader>. :o .<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :wq<CR>
nnoremap <Leader>:q!<CR>
nnoremap <Leader>l :nohlsearch<CR>

" Window movement
nnoremap <Leader><Left> <c-w><Left>
nnoremap <Leader><Right> <c-w><Right>
nnoremap <Leader><Up> <c-w><Up>
nnoremap <Leader><Down> <c-w><Down>

nnoremap <Leader>u :GundoToggle<CR>
