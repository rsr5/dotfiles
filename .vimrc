
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

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

noremap <C-P> <Esc>:CtrlP /home/robin/code<CR>

" Start on the first line of a git commit message
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

" Use jk instead of escape to leave insert mode
inoremap jk <esc>
inoremap <esc> <nop>
