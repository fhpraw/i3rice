call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()

set path+=**
set wildmenu
set termguicolors
set incsearch
set hlsearch
set ignorecase
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set foldmethod=manual

set background=dark
silent! let g:gruvbox_contrast_dark = 'hard'
silent! colo gruvbox

inoremap jk <esc>
nnoremap <space><space> :nohl<cr>
nnoremap <space>ev :edit $MYVIMRC<cr>
vnoremap <space>y "+y
nnoremap <space>p "+gP
nnoremap <space>l :bnext<cr>
nnoremap <space>h :bprevious<cr>
nnoremap <space>x :bprevious <bar> bdelete #<cr>
nnoremap <space>w :write<cr>
nnoremap <space>q :q<cr>