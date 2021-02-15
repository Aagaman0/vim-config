filetype plugin on
syntax on
let mapleader =" "

set relativenumber
set nu
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set nobackup
set nowritebackup
set nohlsearch
set hidden
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autowrite
set autoindent
set smartcase
set incsearch
set splitright splitbelow
set clipboard+=unnamedplus
set signcolumn=yes
set colorcolumn=90
"set nowrap
set updatetime=300
set shortmess+=c
"set mouse=a

let g:netrw_dirhistmax = 0
