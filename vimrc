" vim config for @henrypenface / carlclegg@gmail.com
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'kchmck/vim-coffee-script'

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

" File type shenanigans
au BufRead,BufNewFile *.dust set filetype=html
