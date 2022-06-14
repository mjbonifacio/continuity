" The humble beginning of  Michael Bonifacio's .vimrc : insrpired by grb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITOR CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ","

" plugins
execute pathogen#infect()
filetype plugin indent on

" Set line numbers
set number 

" Syntax highlighting
syntax on
colorscheme gruvbox

" Whitespace
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround
set autoindent

" Search
" make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase
set incsearch

" highlight current line
set cursorline

" Always show tab bar at the top
set showtabline=2
set winwidth=79

" Custom keymappings
" Y yanks until end of line
map Y y$

" Natural navigation when line wraps
nmap j gj
nmap k gk

" Splits
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Auto open quickfix on vimgrep search
augroup myvimrc
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup EN

" Navigation
set scroll=10

" lightline.vim
set laststatus=2
set noshowmode

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" YouCompleteMe
set encoding=utf-8
" Use homebrew's clangd
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'

" vim-auto-save
let g:auto_save = 1  " enable AutoSave on Vim startup
autocmd BufRead,BufNewFile *.go let g:auto_save = 0

