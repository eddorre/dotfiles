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
set backspace=2
set laststatus=2
set guifont=Monaco:h12

command! Colors XtermColorTable
set background=dark
colorscheme base16-railscasts

" Cursor config
set cursorline
hi CursorLine cterm=NONE ctermbg=236
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

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
