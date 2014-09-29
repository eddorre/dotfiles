execute pathogen#infect()
syntax on
filetype plugin indent on
runtime macros/matchit.vim

set nocompatible
set listchars=tab:▸\ ,eol:¬
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set number
set hidden
set t_ti= t_te= "Keeps scrollback buffer
set autoread
set nobackup
set noswapfile
set nowrap

command! Colors XtermColorTable

" Cursor config
set cursorline
hi CursorLine cterm=NONE ctermbg=236

" Split config
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Navigation config
nnoremap <leader><leader> <c-^>

" Rails-specific config
map <leader>gr :sp config/routes.rb<cr>
map <leader>g :sp Gemfile<cr>
set wildignore+=vendor/ruby/**
