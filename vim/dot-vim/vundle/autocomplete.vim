Plugin 'prabirshrestha/asyncomplete.vim'
inoremap <expr> <Tab>   pumvisible() ? asynccomplete#closepopup() : "\<Tab>"
inoremap <expr> <CR>    pumvisible() ? asyncomplete#close_popup() : "\<CR>"
" @ is <Space> in vim
imap <C-@> <Plug>(asyncomplete_force_refresh)

