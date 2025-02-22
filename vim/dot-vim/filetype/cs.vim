autocmd FileType cs nnoremap <C-d> :OmniSharpDocumentation<CR>
autocmd FileType cs nnoremap <C-x><C-o> :OmniSharpSignatureHelp<CR>
autocmd FileType cs nnoremap <Leader>u :OmniSharpFixUsings<CR>
autocmd FileType cs nnoremap <Leader>a :OmniSharpGetCodeActions<CR>

" For comments:
autocmd FileType cs inoremap <C-/> <Esc>i<Home>//

" Open Auto-Completion <C-x><C-o> (i.e., Control+X, Control+O)
" Open Documentation <Leader>d (i.e., \ + d)

" Enable OmniSharp Completion
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
let g:ale_linters = {'cs': ['OmniSharp']}
let g:ale_fixers = {'cs': ['OmniSharp']}
