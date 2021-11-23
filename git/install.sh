#!/bin/bash

# If ~/.gitconfig exists, remove it or fail
if [ -f ~/.gitconfig ]; then
    if [[ $(file --mime-type -b ~/.gitconfig) == *"symlink"* ]]; then rm ~/.gitconfig
    else
        echo ~/.gitconfig already exists!
        echo 'Rename it to ~/.gitconfig.old and proceed? (Y/n)'
        while [ true ] ; do
            read RENAME
            if [ "$RENAME" == 'Y' ] || [ "$RENAME" == 'y' ] || [ "$RENAME" == '' ] ; then
                mv ~/.gitconfig ~/.gitconfig.old
                break
            elif [ "$RENAME" == 'N' ] || [ "$RENAME" == 'n' ] ; then
                echo Aborting ...
                exit 1
            else echo 'Invalid input. Answer with (y)es or (n)o'
            fi
        done
    fi
fi

BASE=$(printf "$(pwd)/$0"|sed -e's/\/.\//\//g'|grep -Eo '^/.+/'|grep -Eo '^.+[^/]')
echo Creating symbolic link to ~/.gitconfig
ln -s "$BASE/dot-gitconfig" ~/.gitconfig
