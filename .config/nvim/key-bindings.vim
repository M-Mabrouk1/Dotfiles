" MAPPINGS --------------------------------------------------------------- {{{

" leader is space
let mapleader =" "

" open files in new tab in nerdtree
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}

" Use vim keys to move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Nerd tree maps
nmap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nmap <leader>t :NERDTreeToggle<CR>

nmap <leader>v :vsp 

" Tagbar toggle
nmap <F8> :TagbarToggle<CR>

" Mapping ii to escape 
:imap ii <Esc>
" :imap <C-C> <Nop>
" nmap <C-C> <Nop>

" Tabs
nnoremap <C-l>h :tabr<cr>
nnoremap <C-l>l :tabl<cr>
nnoremap <C-p> :tabp<cr>
nnoremap <C-n> :tabn<cr>
nnoremap <C-t> :tabnew
nnoremap <C-x> :tabc<cr>

" }}}
