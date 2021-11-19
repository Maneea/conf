set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Call other files that install plugins
source ~/.vim/vundle/go.vim

call vundle#end()            " required

filetype plugin indent on    " required
