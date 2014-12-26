" vim config for @henrypenface / carlclegg@gmail.com
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()

syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set backspace=2

" Visual stuff
set laststatus=2
let g:lightline = { 'colorscheme': 'wombat', }
