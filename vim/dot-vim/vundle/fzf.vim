" Fuzzy-Finder
set rtp+=~/.fzf/bin
Plugin 'junegunn/fzf'

let g:fzf_vim = {} " Initialize this variable before initializing the plugin
Plugin 'junegunn/fzf.vim'
noremap <C-S-p> :FZF<CR>
" After finding the file, you can press:
" 		* Enter: open the file in the current window
" 		* Ctrl-x: open the file in a horizontal split
" 		* Ctrl-v: open the file in a vertical split
" 		* Ctrl-t: open the file in a new tab
" Note that the environment variable FZF_DEFAULT_COMMAND is used here.
