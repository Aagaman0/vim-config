call plug#begin('~/.config/vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'neoclide/coc-snippets'
Plug 'fatih/vim-go'
Plug 'fannheyward/coc-pyright'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/MaskRay/ccls'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'instant-markdown/vim-instant-markdown'
Plug 'sheerun/vim-polyglot'

" misc
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/sonokai'
Plug 'ghifarit53/tokyonight-vim'
" auto close closing characters
Plug 'Raimondi/delimitMate'

" proper icons
Plug 'ryanoasis/vim-devicons'
call plug#end()
"coc commands for downloading vim and bash completion
"CocInstall coc-vimlsp
"CocInstall coc-sh
"CocInstall coc-clangd
