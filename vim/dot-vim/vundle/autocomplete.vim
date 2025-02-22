Plugin 'prabirshrestha/asyncomplete.vim'
let g:asyncomplete_auto_popup = 0
inoremap <expr> <Tab>   pumvisible() ? asynccomplete#closepopup() : "\<Tab>"
inoremap <expr> <CR>    pumvisible() ? asyncomplete#close_popup() : "\<CR>"
" @ is <Space> in vim
imap <C-@> <Plug>(asyncomplete_force_refresh)
