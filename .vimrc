syntax on
colorscheme gruvbox

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
set ruler
set nowrap

" Non Gruvbox Colors "
"highlight DiffAdd    cterm=none ctermfg=118  ctermbg=none
"highlight DiffDelete cterm=none ctermfg=160  ctermbg=none
"highlight DiffChange cterm=none ctermfg=none ctermbg=none
"highlight DiffText   cterm=none ctermfg=220  ctermbg=240
"highlight Pmenu      cterm=none ctermfg=none ctermbg=103
"highlight PmenuSel   cterm=none ctermfg=17   ctermbg=220

" Global Buffer Settings "
let g:ale_lint_delay = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_linters = {
\  'go': [
\    'gofmt',
\    'goimports',
\    'golint',
\    'gopls',
\  ],
\}
let g:ale_fixers = {
\  'go': [
\    'gofmt',
\    'goimports',
\  ],
\  'javascript': [
\    'prettier',
\    'eslint',
\  ],
\}
let g:ale_fix_on_save = 1

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
Plugin 'w0rp/ale'

call vundle#end()
" End Plugins "

" Tags "
set tags=./.tags,.tags;$WORKSPACE

" Mappings "
" Map ALE jump to tag
nnoremap <silent> <C-p> :ALEGoToDefinition<CR>D
" Map ALE  completion
inoremap <silent> <C-@> <C-\><C-O>:ALEComplete<CR>
" Map ALE find references shortcut
nnoremap <silent> <C-@> :ALEFindReferences<CR>
" Map ALE preview shortcut
nnoremap <silent> <C-h> :ALEHover<CR>

