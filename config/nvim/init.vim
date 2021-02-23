if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set termguicolors
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox
let g:airline_powerline_fonts = 1

set cursorline
set incsearch
set hlsearch
set ignorecase
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
