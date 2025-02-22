set nocompatible                    " be iMproved, required by Vundle (Vim Bundle)
filetype off                        " required by Vundle (Vim Bundle)
set rtp+=~/.vim/bundle/Vundle.vim   " Vundle (Vim Bundle)
call vundle#begin()         " required by Vundle
    Plugin 'VundleVim/Vundle.vim' " Let Vundle manage Vundle
	source ~/.vim/vundle/autocomplete.vim
	source ~/.vim/vundle/fzf.vim
	source ~/.vim/vundle/dotnet.vim
	source ~/.vim/vundle/debugging.vim
	source ~/.vim/vundle/statusline.vim " & Tabline
	source ~/.vim/vundle/ai.vim
	source ~/.vim/vundle/filesystem.vim

call vundle#end()           " required by Vundle
filetype plugin indent on   " required by Vundle

" Install new plugins once they are added
autocmd BufWritePost ~/.vim/vundle/init.vim source ~/.vimrc | PluginInstall
