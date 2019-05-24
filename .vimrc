syntax on

" Characters "
set backspace=indent,eol,start

" Spacing "
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2

" Mouse "
set mouse=a

" Visual "
set background=dark
set number

" Colors "
highlight DiffAdd    cterm=none ctermfg=118  ctermbg=none
highlight DiffDelete cterm=none ctermfg=160  ctermbg=none
highlight DiffChange cterm=none ctermfg=none ctermbg=none
highlight DiffText   cterm=none ctermfg=220  ctermbg=240

" Filetype "
set nocompatible
filetype off
filetype plugin indent on

" Runtime Paths "
set rtp+=~/.vim/bundle/Vundle.vim "path for vundle
set rtp+=/usr/local/opt/fzf "path for fzf

" Directory "
au BufEnter * silent! :lcd%:p:h
let g:netrw_keepdir=0

" Plugins"
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim' "let Vundle manage Vundle, required 
Plugin 'universal-ctags/ctags'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

call vundle#end()
" End Plugins "

" Tags "
set tags=./.tags,.tags;$WORKSPACE

