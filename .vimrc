syntax on

" Characters "
set backspace=indent,eol,start

" Spacing "
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2

" Visual "
set background=dark
set number

" Colors "
highlight DiffAdd    cterm=none ctermfg=118  ctermbg=none
highlight DiffDelete cterm=none ctermfg=160  ctermbg=none
highlight DiffChange cterm=none ctermfg=none ctermbg=none
highlight DiffText   cterm=none ctermfg=220  ctermbg=240

" Plugins "
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim' "let Vundle manage Vundle, required 
Plugin 'universal-ctags/ctags'

call vundle#end()
filetype plugin indent on

