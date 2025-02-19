"call vundle#begin()
"    source ~/.vim/vundle/general.vim
"    source ~/.vim/vundle/go.vim
"    source ~/.vim/vundle/csharp.vim
"    source ~/.vim/vundle/json.vim
"call vundle#end()            " required
"
"filetype plugin indent on    " required

set nocompatible                    " be iMproved, required by Vundle (Vim Bundle)
filetype off                        " required by Vundle (Vim Bundle)
set rtp+=~/.vim/bundle/Vundle.vim   " Vundle (Vim Bundle)
set rtp+=~/.fzf/bin                 " FZF
call vundle#begin()         " required by Vundle
    " Let Vundle manage Vundle
    Plugin 'VundleVim/Vundle.vim'

    " Auto-Completion Helper (Used by .NET Language Server)
    Plugin 'prabirshrestha/asyncomplete.vim'

    " Snippets Engine (Used by .NET Language Server)
    Plugin 'SirVer/ultisnips'

    " Symbols search and refactoring
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'

    " Code errors and warnings (Used by .NET Langauge Server)
    " WARNING: Huge performance degradation!
    Plugin 'dense-analysis/ale'

    " .NET Language Server (OmniSharp-Roslyn)
    let g:OmniSharp_server_use_net6 = 1
    Plugin 'OmniSharp/omnisharp-vim'

    " Nice Statusbar
    let g:airline#extensions#tabline#enabled = 1 " Show file name at the top
    let g:airline_powerline_fonts = 1            " Show icons
    Plugin 'vim-airline/vim-airline'

    " Copilot
    Plugin 'github/copilot.vim'

    " NERDTree
    Plugin 'scrooloose/NerdTree'
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'    " Add file-type-based highlighting
    Plugin 'ryanoasis/vim-devicons'                     " Add icons to file types

call vundle#end()           " required by Vundle
filetype plugin indent on   " required by Vundle

" Install new plugins once they are added
autocmd BufWritePost ~/.vim/vundle/init.vim source ~/.vimrc | PluginInstall

