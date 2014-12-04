" vim config for @henrypenface / carlclegg@gmail.com
set nocompatible
filetype off

" WINDOWS
" set rtp+=~/vimfiles/bundle/Vundle.vim/
" let path='~/vimfiles/bundle/'
" call vundle#begin(path)

" REAL OS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle£begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'
call vundle#end()

syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set backspace=2

" Visual stuff
colorscheme slate
set laststatus=2
let g:lightline = { 'colorscheme': 'wombat', }

" Some gui specific options
set guioptions -=T " hide the tool bar
set guifont=Courier\ New:h14

" Some stuff to remap some keys 
:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
