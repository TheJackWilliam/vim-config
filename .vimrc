" Inspired by https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/

" Boilerplate
set nocompatible
filetype on
syntax on

" File editor
set number
set cursorline
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set nobackup
set nowrap

" Command menu
set incsearch
set smartcase
set showcmd
set showmatch
set hlsearch
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Add mouse support
set mouse=a

" Customize Netrw
let g:netrw_banner=0
let g:netrw_liststyle=3
