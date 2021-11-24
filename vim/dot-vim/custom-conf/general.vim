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

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Again, mapping for split panes navigation
nnoremap <silent> <S-Left> :wincmd h<CR>
nnoremap <silent> <S-Right> :wincmd l<CR>
nnoremap <silent> <S-Up> :wincmd k<CR>
nnoremap <silent> <S-Down> :wincmd j<CR>
