
" Enable the pathogen plugin manager.
execute pathogen#infect()

" Enable syntax highlighting
syntax enable
set background=dark
colorscheme solarized

filetype plugin indent on

" Allow pasting in autoindent mode with F2
set pastetoggle=<F2>

" 80 char warning line
:set colorcolumn=80

" Sort out autoindent, do not use tabs
set expandtab
set shiftwidth=2
set softtabstop=2

let g:pymode_folding = 0

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable rubocop
let g:syntastic_ruby_checkers          = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_exec = '/usr/bin/chefrubocop'

" Start on the first line of a git commit message
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])
