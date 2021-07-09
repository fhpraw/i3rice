" Plugins
call plug#begin( stdpath( 'data' ) . '/plugged' )
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Settings
set path+=**
set wildmenu
set termguicolors
set background=dark
set cursorline
set incsearch
set hlsearch
set ignorecase
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set foldmethod=manual
set noshowmode
set noshowcmd

" Gruvbox
silent! let g:gruvbox_italic=1
silent! let g:gruvbox_contrast_dark='medium'
silent! colorscheme gruvbox

" Airline
silent! let g:airline_powerline_fonts = 1
silent! let g:airline#extensions#tabline#enabled = 1

" Keybindings
" ---------------------------------------------------

" back to normal
inoremap jk <esc>

" edit init.vim
nnoremap <space>ev :edit $MYVIMRC<cr>

" stop highlight search
nnoremap <space><space> :nohlsearch<cr>

" yank to clipboard
vnoremap <space>y "+y

" paste from clipboard
nnoremap <space>p "+gP

" next buffer
nnoremap <space>l :bnext<cr>

" previous buffer
nnoremap <space>h :bprevious<cr>

" delete buffer
nnoremap <space>x :bprevious <bar> bdelete #<cr>

" write buffer
nnoremap <space>w :write<cr>

" quit
nnoremap <space>q :q<cr>
