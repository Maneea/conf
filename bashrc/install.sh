#!/bin/bash

# If ~/.bashrc exists, remove it or fail
if [ -L ~/.bashrc ]; then
    rm ~/.bashrc
elif [ -f ~/.bashrc ]; then
    echo ~/.bashrc already exists!
    echo 'Rename it to ~/.bashrc.old and proceed? (Y/n)'
    while [ true ] ; do
        read RENAME
        if [ "$RENAME" == 'Y' ] || [ "$RENAME" == 'y' ] || [ "$RENAME" == '' ] ; then
            mv ~/.bashrc ~/.bashrc.old
            break
        elif [ "$RENAME" == 'N' ] || [ "$RENAME" == 'n' ] ; then
            echo Aborting ...
            exit 1
        else echo 'Invalid input. Answer with (y)es or (n)o'
        fi
    done
fi

BASE=$(printf "$(pwd)/$0"|sed -e's/\/.\//\//g'|grep -Eo '^/.+/'|grep -Eo '^.+[^/]')
echo Creating symbolic link to ~/.bashrc
ln -s "$BASE/dot-bashrc" ~/.bashrc
