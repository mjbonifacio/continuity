" The humble beginning of  Michael Bonifacio's .vimrc : insrpired by grb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITOR CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

" Set line numbers
set number 

" Syntax highlighting
syntax on
colorscheme gruvbox

" Whitespace
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" highlight current line
set cursorline

" Navigation
set scroll=10

" plugins
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
filetype plugin indent on
