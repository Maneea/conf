Plugin 'dense-analysis/ale' " Code errors and warnings (Used by .NET Langauge Server)
" WARNING: ALE causes high performance degradation because it will run all linters available on the system. 
" To limit ALE to only use OmniSharp when the filetype is `.cs` (recommended), the following is used
let g:ale_linters = { 'csharp': ['OmniSharp'] }

let g:OmniSharp_server_use_net6 = 1 " Use .NET 6 SDK instead of Mono
Plugin 'OmniSharp/omnisharp-vim' " .NET Language Server (OmniSharp-Roslyn)

" ========== Keybindings ==========
" Code format with Ctrl + Alt + F
noremap <C-S-F> :OmniSharpCodeFormat<CR>

" Show the documentation of the symbol under the cursor with Ctrl + K
" If the autocompletion menu is shown and the cursor is on a symbol, the
" documentation will be shown for that symbol. If the autocompletion menu is
" not shown, the documentation will be shown for the symbol under the cursor.
autocmd FileType cs noremap <buffer> <C-K> :OmniSharpDocumentation<CR>

" ========== Automations ==========
" Format code on save
autocmd BufWritePre *.cs :OmniSharpCodeFormat
