" Bootstrap Plug
let autoload_plug_path = stdpath('data') . '/site/autoload/plug.vim'
if !filereadable(autoload_plug_path)
  silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs 
      \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
unlet autoload_plug_path

" call plug#begin(stdpath('data') . '/plugged')
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-commentary'
" Plug 'morhetz/gruvbox'
" Plug 'mhinz/vim-startify'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'ryanoasis/vim-devicons'
" call plug#end()

" set bg=dark
" let g:gruvbox_contrast_dark='hard'
" colo gruvbox

" let g:airline_powerline_fonts=1

" vanilla
set laststatus=2
set encoding=utf-8
set t_Co=256
set number
set relativenumber
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
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

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
