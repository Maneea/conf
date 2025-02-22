Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'mhinz/vim-signify'
Plugin 'lambdalisue/battery.vim'

let g:airline#extensions#tabline#enabled = 1 " Show buffers at the top
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1            " Show icons
let g:airline_section_z = '%p%%%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__#%#__accent_bold#%{g:airline_symbols.colnr}%v | %{battery#component()}%#__restore__#' " Adding the battery levels to the far-right of the statusline
