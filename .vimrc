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
set ruler
set nowrap

" Gruvbox Colors "
let g:gruvbox_inverse = 0
colorscheme gruvbox

" Non Gruvbox Colors "
highlight RipgrepBlue cterm=none ctermfg=14 ctermbg=none
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
let g:fzf_colors =
\ { 'hl':      ['fg', 'RipgrepBlue'],
  \ 'bg+':     ['bg', 'PMenu'],
  \ 'hl+':     ['fg', 'CursorLineNr'] }

" Filetype "
set nocompatible
filetype off
filetype plugin indent on

" Directory "
"let g:netrw_keepdir=0

" Runtime Paths "
set rtp+=~/.vim/bundle/Vundle.vim "path for vundle
set rtp+=/usr/local/opt/fzf "path for fzf

" Plugins"
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim' "let Vundle manage Vundle, required 
Plugin 'universal-ctags/ctags'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'dense-analysis/ale'

call vundle#end()
" End Plugins "

" Tags "
set tags=./.tags,.tags;$WORKSPACE

" Commands "
command! -bang -nargs=* -complete=dir Fzf call fzf#vim#files(<q-args>, <bang>0)
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4.. --color hl:14,hl+:214'}, <bang>0)

" Mappings "
" Ripgrep the cursor
nnoremap <silent> <C-f> :Rg <C-r><C-w><CR>
" Map ALE jump to tag
nnoremap <silent> <C-p> :ALEGoToDefinition<CR>D
" Map ALE  completion
inoremap <silent> <C-@> <C-\><C-O>:ALEComplete<CR>
" Map ALE find references shortcut
nnoremap <silent> <C-@> :ALEFindReferences<CR>
" Map ALE preview shortcut
nnoremap <silent> <C-h> :ALEHover<CR>

