Plugin 'dense-analysis/ale' " Code errors and warnings (Used by .NET Langauge Server)
" WARNING: ALE causes high performance degradation because it will run all linters available on the system. 
" To limit ALE to only use OmniSharp when the filetype is `.cs` (recommended), the following is used
let g:ale_linters = { 'csharp': ['OmniSharp'] }
let g:ale_fixers = {'cs': ['OmniSharp']}
let g:OmniSharp_server_use_net6 = 1 " Use .NET 6 SDK instead of Mono

Plugin 'OmniSharp/omnisharp-vim' " .NET Language Server (OmniSharp-Roslyn)

" ========== Keybindings ==========
" Code format with Ctrl + Alt + F
" Avoid FZF borders, style to minimal, no preview, no header
let g:OmniSharp_fzf_options = { 'options': [ '--border=none' , '--reverse', '--info=hidden', '--no-preview', '--height=50%', '--bind=focus:transform-header:false'], 'down': '40%' }
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_selector_findusages = 'fzf'
let g:OmniSharp_selector_findmembers = 'fzf'
let g:OmniSharp_completion_without_overloads = 1
let g:OmniSharp_formatter_options = { 'indentSize': 4, 'useTabs': v:true }
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
autocmd FileType cs nnoremap <silent> <buffer> <C-S-F> <Plug>(omnisharp_code_format)
autocmd FileType cs nnoremap <silent> <buffer> <C-d> <Plug>(omnisharp_documentation)
autocmd FileType cs nnoremap <silent> <C-s> <Plug>(omnisharp_signature_help)
" And to cycle through them (i.e., show next overload):
" (this is a weird bug and a hacky way to fix it)
autocmd FileType cs nnoremap <silent> <C-k> <Plug>(omnisharp_signature_help)
autocmd FileType cs nnoremap <silent> <buffer> <C-u> <Plug>(omnisharp_fix_usings)
autocmd FileType cs nnoremap <silent> <buffer> <C-a> <Plug>(omnisharp_code_actions)

" ========== Symbols Keybindings ========== "
autocmd FileType cs nnoremap <silent> <buffer> <Leader>fi <Plug>(omnisharp_find_implementations)
autocmd FileType cs nnoremap <silent> <buffer> <Leader>fm <Plug>(omnisharp_find_members)
autocmd FileType cs nnoremap <silent> <buffer> <Leader>fs <Plug>(omnisharp_find_symbol)
autocmd FileType cs nnoremap <silent> <buffer> <Leader>fu <Plug>(omnisharp_find_usages)
autocmd FileType cs nnoremap <silent> <buffer> <Leader>ft <Plug>(omnisharp_find_type)

autocmd FileType cs nnoremap <silent> <buffer> <Leader>pd <Plug>(omnisharp_preview_definition)
autocmd FileType cs nnoremap <silent> <buffer> <Leader>pi <Plug>(omnisharp_preview_implementation)

autocmd FileType cs nnoremap <silent> <buffer> <Leader>def <Plug>(omnisharp_go_to_definition)

autocmd FileType cs nnoremap <silent> <buffer> <Leader>cc <Plug>(omnisharp_global_code_check)

autocmd FileType cs nnoremap <silent> <buffer> <Leader>rr <Plug>(omnisharp_rename)
autocmd FileType cs nnoremap <silent> <buffer> <Leader>rf <Plug>(omnisharp_highlight)
