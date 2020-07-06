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
