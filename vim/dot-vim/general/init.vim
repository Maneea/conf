source ~/.vim/general/keybindings.vim " Keybindings

syntax on " Enable syntax highlighting
set number " Show line numbers
set hidden " Avoid the annoying swap file message
set t_Co=256 " Enabling 256-Color Support in Vim
set pumheight=10 " Suggestion popup max items
set encoding=UTF-8 " Unicode (to show icons)
set nohlsearch " Disable search highlighting

" Change popup colors
autocmd VimEnter * highlight Pmenu ctermbg=245 ctermfg=232
autocmd VimEnter * highlight PmenuSel ctermbg=22 ctermfg=255
autocmd VimEnter * highlight PmenuSbar ctermbg=240 ctermfg=232
autocmd VimEnter * highlight PmenuThumb ctermbg=240 ctermfg=232
autocmd VimEnter * redraw!

" Tabs (Shouldn't be useful, as tmux is used instead)
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent

" Colorscheme (https://github.com/tomasr/molokai) in ~/.vim/colors
colorscheme molokai
