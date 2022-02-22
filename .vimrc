" Runtime Paths "
set rtp+=/usr/local/opt/fzf "path for fzf

" Filetype "
set nocompatible
filetype off
filetype plugin indent on

" File Explorer "
let g:netrw_list_hide= '.*\.swp$,\.orig$'

" Syntax "
syntax on
let g:python_highlight_all = 1

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

" Generic Colors "
highlight RipgrepBlue cterm=none ctermfg=14   ctermbg=none
highlight DiffAdd     cterm=none ctermfg=118  ctermbg=none
highlight DiffDelete  cterm=none ctermfg=52   ctermbg=52
highlight DiffChange  cterm=none ctermfg=none ctermbg=none
highlight DiffText    cterm=none ctermfg=220  ctermbg=240
highlight Search      cterm=none ctermfg=14   ctermbg=none
" Persist After ColorScheme Change
autocmd ColorScheme * highlight RipgrepBlue cterm=none ctermfg=14   ctermbg=none
autocmd ColorScheme * highlight DiffAdd     cterm=none ctermfg=118  ctermbg=none
autocmd ColorScheme * highlight DiffDelete  cterm=none ctermfg=52   ctermbg=52
autocmd ColorScheme * highlight DiffChange  cterm=none ctermfg=none ctermbg=none
autocmd ColorScheme * highlight DiffText    cterm=none ctermfg=220  ctermbg=240
autocmd ColorScheme * highlight Search      cterm=none ctermfg=14   ctermbg=none

" Global Buffer Settings "
" ALE "
let g:ale_lint_delay = 0
let g:ale_lint_diff = 1
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
\  'python': [
\    'pyright',
\  ],
\  'rust': [
\    'rustc',
\    'rls',
\  ],
\  'vim': [
\    'vimls',
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

" Mappings - use control for plugins, leader otherwise"
" Enter on pop up menu selects
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
" Ripgrep the cursor
nnoremap <silent> <C-f> :Rg <C-r><C-w><CR>
" Map ALE toggle
nnoremap <silent> <C-a> :ALEToggle<CR>
inoremap <silent> <C-a> <C-\><C-O>:ALEToggle<CR>
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
" Set highlight on search
nnoremap <silent> <leader>/ :set hlsearch!<CR>
" Search for word under cursor in file
nnoremap <silent> <leader>f /<C-r><C-w><CR>N :set hlsearch<CR>
