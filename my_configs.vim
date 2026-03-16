let g:NERDTreeWinPos = "left"

:set relativenumber
:set nofoldenable
:set shiftwidth=4
:set nofixendofline

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['python']
let g:syntastic_python_python_exec = 'python3'

let g:ale_fixers = {'*.ts': ['tslint', 'prettier'], '*.js': ['eslint', 'prettier']}
let g:ale_linters = { 'typescript' :['tslint', 'prettier'], 'javascript': ['eslint', 'prettier'], 'python': ['flake8'] }
let g:ale_fix_on_save = 0

let g:ale_python_flake8_executable = 'python3'
let g:pymode_python = 'python3'
map <leader>g :Rg "

" CtrlP improvements
" Use ripgrep for faster file finding if available
if executable('rg')
  let g:ctrlp_user_command = 'rg --files %s'
  let g:ctrlp_use_caching = 0
endif

" Increase max files limit
let g:ctrlp_max_files = 20000

" More specific ignore pattern - only ignore complete directories/specific files
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|\.git|coverage)$|[\/]build[\/]',
  \ 'file': '\v\.DS_Store$|\.pyc$'
  \ }


" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

let g:fugitive_gitlab_domains = ['https://cd.splunkdev.com']
