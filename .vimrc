set nocompatible
set backspace=2
syntax on

set tabstop=4
set shiftwidth=4
set expandtab 

set ruler
set showmatch
set hlsearch


if has("gui_running")
  set guioptions-=T
  set t_Co=256
  set background=light
  set nu
else
  colorscheme zellner
  set background=dark
  set nonu
endif

set nobackup
set nowb
set noswapfile

set encoding=utf-8
set termencoding=utf-8

set nocompatible
syntax enable
filetype plugin on
