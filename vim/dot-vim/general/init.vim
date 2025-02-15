source ~/.vim/general/keybindings.vim
syntax on
set number
set hidden " Avoid the annoying swap file message

set t_Co=256 " Enabling 256-Color Support in Vim

" Suggestion popup max items
set pumheight=10

" Unicode (to show icons)
set encoding=UTF-8

" Change popup colors
autocmd VimEnter * highlight Pmenu ctermbg=245 ctermfg=232
autocmd VimEnter * highlight PmenuSel ctermbg=22 ctermfg=255
autocmd VimEnter * highlight PmenuSbar ctermbg=240 ctermfg=232
autocmd VimEnter * highlight PmenuThumb ctermbg=240 ctermfg=232
autocmd VimEnter * redraw!

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
