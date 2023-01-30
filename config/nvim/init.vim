" Plugins
call plug#begin( stdpath( 'data' ) . '/plugged' )
"Plug 'dracula/vim',{'as':'dracula'}
Plug 'morhetz/gruvbox'
"Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Settings
set path+=**
set wildmenu
set termguicolors
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
set number

" Dracula
" ---------------------------------------------------
"set background=dark
"silent! colo dracula

" Gruvbox
" ---------------------------------------------------
set background=dark

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

silent! let g:gruvbox_italic = '1'
silent! let g:gruvbox_contrast_dark = 'hard'
silent! colo gruvbox

silent! let g:airline_powerline_fonts = 1

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
