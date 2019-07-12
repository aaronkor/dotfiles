set nocompatible    
filetype off        

set encoding=utf-8
set number
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set gcr=a:blinkon0
set visualbell
set autoread

" Don't generate temp files
set noswapfile
set nobackup
set nowb

" Vim Plug
call plug#begin('~/.vim/plugged')

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

call plug#end()

" python-mode settings
let g:pymode_python = 'python3'

nnoremap p p=`]<C-o>
filetype plugin indent on

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" enable folding
"set foldmethod=indent

set nowrap
set linebreak
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" set incsearch
" set ignorecase
" set smartcase
