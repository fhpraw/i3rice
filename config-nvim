call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'lifepillar/vim-gruvbox8'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set bg=dark
if empty($DISPLAY) 
  " TTY
  colo gruvbox8
else
  " Not in TTY
  set t_Co=256
  colo gruvbox8_hard
  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'zenburn'
endif

set encoding=UTF-8
set relativenumber
set noshowmode
set laststatus=2
set showcmd
set wildmenu
set lazyredraw
set showmatch
set visualbell
set cursorline
set incsearch
set hlsearch
set ignorecase
set smartcase
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set foldmethod=manual

inoremap jk <esc>
nnoremap <space>ev :edit $MYVIMRC<cr>
nnoremap <space><space> :nohlsearch<cr>
vnoremap <space>y "+y
nnoremap <space>p "+gP
nnoremap <space>l :bnext<cr>
nnoremap <space>h :bprevious<cr>
nnoremap <space>x :bprevious <bar> bdelete #<cr>
nnoremap <space>w :write<cr>
nnoremap <space>q :q<cr>
