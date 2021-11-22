syntax on
set number

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight search
set hlsearch

" Unicode (to show icons)
set encoding=UTF-8

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Status Bar (Airline Plugin)
let g:airline#extensions#tabline#enabled = 1 " Show file name at the top


"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""" Custom Keybinding """"""""""""""
"""""""""""""""""""""""""""""""""""""""""""""

" Switch between buffers (like a web browser)
noremap <C-PageUp> <Esc>:bprevious<CR>
noremap <C-PageDown> <Esc>:bnext<CR>    
