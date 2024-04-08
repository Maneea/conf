syntax on
set number

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight search
set hlsearch

" Colorscheme (https://github.com/tomasr/molokai) in ~/.vim/colors
" colorscheme molokai

" Unicode (to show icons)
set encoding=UTF-8

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


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
