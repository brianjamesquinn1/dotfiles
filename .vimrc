" Runtime Paths "
set rtp+=~/.vim/bundle/Vundle.vim "path for vundle
set rtp+=/usr/local/opt/fzf "path for fzf

" Plugins"
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'             "let Vundle manage Vundle, required
Plugin 'junegunn/fzf'                     "allows use of fzf
Plugin 'junegunn/fzf.vim'                 "and rg
Plugin 'dense-analysis/ale'               "linting/LSP features
Plugin 'tpope/vim-fugitive'               "git tools, useful for rebase/merge/code review
Plugin 'stefandtw/quickfix-reflector.vim' "enable changing files in quickfix/loclist buffers (helpful for project wide find& replace)

Plugin 'junegunn/vader.vim' "add plugin for vim vader testing framework

Plugin 'elixir-editors/vim-elixir'    "better elixir highlighting
Plugin 'yuezk/vim-js'                 "better js/flow highlighting
Plugin 'maxmellon/vim-jsx-pretty'     "react highlighting

call vundle#end()
" End Plugins "

" Filetype "
set nocompatible
filetype off
filetype plugin indent on

" File Explorer "
let g:netrw_list_hide= '.*\.swp$,\.orig$'

" Syntax "
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
highlight RipgrepBlue cterm=none ctermfg=14   ctermbg=none
highlight DiffAdd     cterm=none ctermfg=118  ctermbg=none
highlight DiffDelete  cterm=none ctermfg=52   ctermbg=52
highlight DiffChange  cterm=none ctermfg=none ctermbg=none
highlight DiffText    cterm=none ctermfg=220  ctermbg=240
highlight Search      cterm=none ctermfg=14   ctermbg=none
"highlight Pmenu      cterm=none ctermfg=none ctermbg=103
"highlight PmenuSel   cterm=none ctermfg=17   ctermbg=220

" Global Buffer Settings "
" ALE "
let g:ale_lint_delay = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_linters = {
\  'cpp': [
\    'clang',
\    'clangcheck',
\    'clangd',
\    'flawfinder',
\  ],
\  'elixir': [
\    'credo',
\    'elixir-ls',
\  ],
\  'go': [
\    'golint',
\    'gopls',
\  ],
\  'javascript': [
\    'eslint',
\    'flow-language-server',
\  ],
\  'rust': [
\    'rustc',
\    'rls',
\  ],
\}
let g:ale_fixers = {
\  'cpp': [
\    'clang-format',
\    'clangtidy',
\  ],
\  'elixir': [
\    'mix_format',
\  ],
\  'go': [
\    'gofmt',
\    'goimports',
\  ],
\  'javascript': [
\    'prettier',
\    'eslint',
\  ],
\  'rust': [
\    'rustfmt',
\  ],
\}
let g:ale_fix_on_save = 1
let g:ale_elixir_elixir_ls_release = $WORKSPACE.'/elixir-ls/release'
" FZF "
let g:fzf_colors =
\ { 'hl':      ['fg', 'RipgrepBlue'],
  \ 'bg+':     ['bg', 'PMenu'],
  \ 'hl+':     ['fg', 'CursorLineNr'] }
" Quickfix-reflector "
let g:qf_modifiable = 0

" Functions "
function! DiffToggle()
    if &diff
        diffoff
    else
        diffthis
    endif
:endfunction

" Commands "
command! -bang -nargs=* -complete=dir Fzf call fzf#vim#files(<q-args>, <bang>0)
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4.. --color hl:14,hl+:214'}, <bang>0)

" Mappings "
" Enter on pop up menu selects
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
" Ripgrep the cursor
nnoremap <silent> <C-f> :Rg <C-r><C-w><CR>
" Map ALE jump to tag
nnoremap <silent> <C-p> :ALEGoToDefinition<CR>
" Map ALE  completion
inoremap <silent> <C-@> <C-\><C-O>:ALEComplete<CR>
" Map ALE find references shortcut
nnoremap <silent> <C-@> :ALEFindReferences -relative<CR>
" Map ALE preview shortcut
nnoremap <silent> <C-h> :ALEHover<CR>
" Open all diff files in split view from provided branch/commit (use for code review)
cmap PR Git difftool -y
" List all diffed files in quickfix list from provided branch/commit
cmap difflist Git difftool --name-only
" Toggle diff between files in current tab
nnoremap <silent> <C-d> :call DiffToggle()<CR>
