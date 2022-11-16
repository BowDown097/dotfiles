set nocompatible              " be iMproved, required
set noswapfile		          " turn off swap file for performance boost
set clipboard+=unnamedplus    " clipboard optimization
set number                    " turn on absolute line numbers
set lazyredraw                " improve scrolling performance when navigating through large results
set ignorecase smartcase      " ignore case only when the pattern contains no capital letters

" 4 space tabs
set tabstop=4
set shiftwidth=4
set expandtab

" vim-plug
call plug#begin()
Plug 'brooth/far.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()

" mapping
nmap <C-p> <Plug>MarkdownPreviewToggle
nnoremap <silent> <C-f> :Farf<cr>
vnoremap <silent> <C-f> :Farf<cr>
nnoremap <silent> <S-f> :Farr<cr>
vnoremap <silent> <S-f> :Farr<cr>
