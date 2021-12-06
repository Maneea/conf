set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    source ~/.vim/vundle/general.vim
    source ~/.vim/vundle/go.vim
    source ~/.vim/vundle/markdown.vim
call vundle#end()            " required

filetype plugin indent on    " required
