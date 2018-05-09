
" Enable the pathogen plugin manager.
" execute pathogen#infect()

" Enable syntax highlighting
syntax enable
set background=dark
colorscheme solarized8_dark

filetype plugin indent on

" Allow pasting in autoindent mode with F2
set pastetoggle=<F2>

" 80 char warning line
:set colorcolumn=100

" Sort out autoindent, do not use tabs
set expandtab
set shiftwidth=2
set softtabstop=2

let g:pymode_folding = 0

" Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Enable rubocop
"let g:syntastic_ruby_checkers          = ['rubocop', 'mri']
"let g:syntastic_ruby_rubocop_exec = '/usr/bin/chefrubocop'

"let g:syntastic_python_checkers=['flake8']

" Disable arrow keys 
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Left/Right changes buffer
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Start on the first line of a git commit message
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

" Use jk instead of escape to leave insert mode
inoremap jk <esc>
inoremap <esc> <nop>

let g:pymode_rope = 0

set spell spelllang=en_gb

set rtp+=~/.fzf

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

nnoremap <C-p> :Files<CR>

let g:gitgutter_realtime = 1

set shell=/bin/zsh

let g:airline_powerline_fonts=1
