" SETTINGS --------------------------------------------- {{{

set guicursor=n-v-c:block,i-ci-ve:ver25-iCursor-blinkwait300-blinkon200-blinkoff150
set number
set nu
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set hidden
set nohlsearch
set incsearch
set noerrorbells
set scrolloff=8
set signcolumn=yes
set clipboard+=unnamedplus
set nobackup
set noswapfile
set wildmode=longest,list,full
syntax enable
" }}}



" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin()


Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/tagbar'
Plug 'dracula/vim', { 'as': 'dracula' }

set encoding=UTF-8

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{
" Nerd tree maps
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Tagbar toggle
nmap <F8> :TagbarToggle<CR>

" Mapping ii to escape 
:imap ii <Esc>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
" zo open single fold
" zc close single folgfold
" zR open all folds
" zM close all folds

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END



" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Lightline configuration.
" Colour scheme.

let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ }
      \ }

" }}}
