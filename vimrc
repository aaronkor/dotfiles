set nocompatible

" ====== General Config ======

set number 				" Show line numbers
set backspace=indent,eol,start		" Allow backspace in INSERT mode
set history=1000			" Command history
set showcmd				" Show incomplete commands down the bottom
set showmode				" Show current mode at the bottom
set gcr=a:blinkon0			" Disable cursor blink
set visualbell				" No annoying sound
set autoread				" Reload files changed outside vim

" ====== Vim Plug ======

" Install Vim Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'jacoborus/tender.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

" ====== Turn Off Swap Files ======

set noswapfile
set nobackup
set nowb

" ====== Indentation ======

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

" Wrap settings
set nowrap 		" Don't wrap lines
set linebreak		" Wrap lines at convenient points


" ====== Folds ======

set foldmethod=indent	" Fold based on indent
set foldnestmax=3	" deepest fold is 3 levels
set nofoldenable	" dont fold by default

" ====== Completion ======

set wildmode=list:longest
set wildmenu			" Enable Ctrl-n and Ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~	" Stuff to ignore when tab completeting
set wildignore+=*log/**
set wildignore+=tmp/**

" ====== Scrolling ======

set scrolloff=8		" Start scrolling wheb cursor is 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ====== Search ======

set incsearch	" Find the next match as we type the search
" set hlsearch	" Highlight searches by default
set ignorecase 	" Ignore case when searching
set smartcase	" Don't ignore case when searching with upper case


" ====== Color Scheme ======


set term=screen-256color
set t_ut=

" If running on vim >= 8.0 then set terminal colors
" if(has("termguicolors"))
"  set termguicolors
" endif

syntax enable
if &term =~ '256color'
  set term=screen-256color
  set t_ut=

  set background=dark
  colorscheme PaperColor 
endif
