source ~/.vim/general/keybindings.vim " Keybindings

syntax on " Enable syntax highlighting
set number " Show line numbers
set hidden " Avoid the annoying swap file message
set t_Co=256 " Enabling 256-Color Support in Vim
set pumheight=10 " Suggestion popup max items
set encoding=UTF-8 " Unicode (to show icons)
set nohlsearch " Disable search highlighting
"set foldmethod=indent
set foldlevel=99
set foldenable
set noexpandtab " ensures Tab inserts a tab instead of spaces
set tabstop=4 " sets tab display width to 4 columns
set shiftwidth=4 " sets indentation width for operations like `>>` to 4 columns
set autoindent " continues indentation from the previous line
set softtabstop=4 " sets the number of columns for a tab character
set list " visually distinguish tabs from spaces
set listchars=tab:›\ ,trail:·,extends:→,precedes:←,nbsp:␣ " sets the characters used to represent tabs and spaces

filetype indent plugin on
syntax enable
"
" Change popup colors
autocmd VimEnter * highlight Pmenu ctermbg=234 ctermfg=250
autocmd VimEnter * highlight PmenuSel ctermbg=236 ctermfg=250
autocmd VimEnter * highlight PmenuSbar ctermbg=22 ctermfg=250
autocmd VimEnter * highlight PmenuThumb ctermbg=46 ctermfg=250
autocmd VimEnter * redraw!

nnoremap <Esc>1 :set foldlevel=0<CR>
nnoremap <Esc>2 :set foldlevel=1<CR>
nnoremap <Esc>3 :set foldlevel=2<CR>
nnoremap <Esc>4 :set foldlevel=3<CR>
nnoremap <Esc>5 :set foldlevel=4<CR>
nnoremap <Esc>6 :set foldlevel=5<CR>
nnoremap <Esc>7 :set foldlevel=6<CR>
nnoremap <Esc>8 :set foldlevel=7<CR>
nnoremap <Esc>9 :set foldlevel=8<CR>
nnoremap <Esc>0 :set foldlevel=99<CR>


" Colorscheme (https://github.com/tomasr/molokai) in ~/.vim/colors
colorscheme molokai
