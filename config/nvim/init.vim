call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set termguicolors
set background=dark
set cursorline
set incsearch
set hlsearch
set ignorecase
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set foldmethod=manual
set noshowmode
set noshowcmd
silent! let g:gruvbox_italic=1
silent! let g:gruvbox_contrast_dark='hard'
silent! colorscheme gruvbox
silent! let g:airline_powerline_fonts = 1
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
