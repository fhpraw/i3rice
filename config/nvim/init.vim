call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"--------------------------------------------------
" vanilla settings
"--------------------------------------------------

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

"--------------------------------------------------
" plugins settings
"--------------------------------------------------

" gruvbox theme
silent! let g:gruvbox_italic=1
silent! colorscheme gruvbox

" vim airline statusline
silent! let g:airline_powerline_fonts = 1

"--------------------------------------------------
" key bindings
"--------------------------------------------------

" back to normal
inoremap jk <esc>

" edit init.vim
nnoremap <space>ev :edit $MYVIMRC<cr>

"turn of highlight
nnoremap <space><space> :nohlsearch<cr>

" copy to clipboard
vnoremap <space>y "+y

" paste from clipboard
nnoremap <space>p "+gP

" next buffer
nnoremap <space>l :bnext<cr>

" previous buffer
nnoremap <space>h :bprevious<cr>

" delete buffer
nnoremap <space>x :bprevious <bar> bdelete #<cr>

" save buffer
nnoremap <space>w :write<cr>

" quit
nnoremap <space>q :q<cr>
