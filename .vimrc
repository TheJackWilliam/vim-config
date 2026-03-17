" Inspired by https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/

" Boilerplate
set nocompatible
filetype on
filetype plugin on
filetype indent on
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
" let g:netrw_banner=0
" let g:netrw_liststyle=3

" Plugins
call plug#begin('~/.vim/plugged')
    " NerdTree
    Plug 'preservim/nerdtree'
    " ALE
    Plug 'dense-analysis/ale'
call plug#end()

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Mappings
let mapleader = "\\"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
