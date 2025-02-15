#!/bin/bash

# If ~/.vimrc exists, remove it, rename it, or fail.
if [ -L ~/.vimrc ]; then # If it's a symlink, remove it.
   rm ~/.vimrc
elif [ -e ~/.vimrc ]; then
   echo ~/.vimrc already exist!
   echo 'Rename it to ~/.vimrc.old and proceed? (Y/n)'
   while [ true ] ; do
       read RENAME
       if [ "$RENAME" == 'Y' ] || [ "$RENAME" == 'y' ] || [ "$RENAME" == '' ] ; then
           mv ~/.vimrc ~/.vimrc.old
           break
       elif [ "$RENAME" == 'N' ] || [ "$RENAME" == 'n' ] ; then
           echo Aborting ...
           exit 1
       else echo 'Invalid input. Answer with (y)es or (n)o'
       fi
   done
fi

# If ~/.vim exists, remove it, rename it, or fail
if [ -L ~/.vim ]; then # If it's a symlink
   rm ~/.vim
elif [ -f ~/.vim ] || [ -d ~/.vim ]; then
   echo ~/.vim already exist!
   echo 'Rename it to ~/.vim.old and proceed? (Y/n)'
   while [ true ] ; do
       read RENAME
       if [ "$RENAME" == 'Y' ] || [ "$RENAME" == 'y' ] || [ "$RENAME" == '' ] ; then
           mv ~/.vim ~/.vim.old
           break
       elif [ "$RENAME" == 'N' ] || [ "$RENAME" == 'n' ] ; then
           echo Aborting ...
           exit 1
       else echo 'Invalid input. Answer with (y)es or (n)o'
       fi
   done
fi

# if git doesn't exist, then fail
if ! type git>/dev/null 2>&1 ; then
    echo git command not found!
    exit 1
fi

# Now the installation starts.
BASE=$(printf "$(pwd)/$0"|sed -e's/\/.\//\//g'|grep -Eo '^/.+/'|grep -Eo '^.+[^/]')
echo Creating symbolic links to ~/.vim and ~/.vimrc
ln -s "$BASE/dot-vimrc" ~/.vimrc 
ln -s "$BASE/dot-vim" ~/.vim

if [ ! -d "$BASE/dot-vim/bundle/Vundle.vim" ]
then
    echo Downloading Vundle ...
    git clone https://github.com/VundleVim/Vundle.vim.git "$BASE/dot-vim/bundle/Vundle.vim"
fi

# Install all plugins!
echo Installing all plugins ...
vim -c PluginInstall -c "qa!"
