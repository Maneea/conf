#!/bin/bash

# If ~/.vimrc exists, remove it or fail
if [ -f ~/.vimrc ]; then
    if [[ $(file --mime-type -b ~/.vimrc) == *"symlink"* ]]; then
        echo REMOVING OLD SYMLINK ~/.vimrc
        rm ~/.vimrc
    else
        echo ~/.vimrc EXISTS!
        exit 1
    fi
fi

# If ~/.vim exists, remove it or fail
if [ -f ~/.vim ] || [ -d ~/.vim ]; then
    if [[ $(file --mime-type -b ~/.vim) == *"symlink"* ]]
    then
        echo REMOVING OLD SYMLINK ~/.vim
        rm ~/.vim
    else
        echo ~/.vim EXISTS!
        exit 1
    fi
fi

# if git doesn't exist, then fail
if ! type git>/dev/null 2>&1 ; then
    echo git command not found!
    exit 1
fi

BASE=$(printf "$(pwd)/$0"|sed -e's/\/.\//\//g'|grep -Eo '^/.+/'|grep -Eo '^.+[^/]')
echo Creating symbolic links to ~/.vim and ~/.vimrc
ln -s "$BASE/dot-vimrc" ~/.vimrc 
ln -s "$BASE/dot-vim" ~/.vim

if [ ! -d "$BASE/dot-vim/bundle/Vundle.vim" ]
then
    echo Downloading Vundle! ...
    git clone https://github.com/VundleVim/Vundle.vim.git "$BASE/dot-vim/bundle/Vundle.vim"
fi

# Install all plugins!
echo Installing all plugins ...
vim -c PluginInstall -c "qa!"
