
" Enable the pathogen plugin manager.
execute pathogen#infect()

" Enable syntax highlighting
syntax on
set background=dark


filetype plugin indent on

" Allow pasting in autoindent mode with F2
set pastetoggle=<F2>

let g:pymode_folding = 0

" Start on the first line of a git commit message
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

