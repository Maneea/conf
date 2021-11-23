syntax on
set number

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight search
set hlsearch

" Colorscheme (https://github.com/tomasr/molokai) in ~/.vim/colors
colorscheme molokai

" Unicode (to show icons)
set encoding=UTF-8

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Status Bar (Airline Plugin)
let g:airline#extensions#tabline#enabled = 1 " Show file name at the top
let g:airline_powerline_fonts = 1            " Show icons

"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""" Custom Keybinding """"""""""""""
"""""""""""""""""""""""""""""""""""""""""""""

" Switch between and close buffers (like a web browser)
noremap <C-PageUp> <Esc>:bprevious<CR>
noremap <C-PageDown> <Esc>:bnext<CR>
noremap <C-w> <Esc>:bdelete<CR>

