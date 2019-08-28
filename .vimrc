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

" Always show tab bar at the top
set showtabline=2
set winwidth=79

" Navigation
set scroll=10

" plugins
execute pathogen#infect()
filetype plugin indent on

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" tags
set tags=tags
