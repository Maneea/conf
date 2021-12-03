#!/bin/bash

BASE=$(printf "$(pwd)/$0"|sed -e's/\/.\//\//g'|grep -Eo '^/.+/'|grep -Eo '^.+[^/]')
BASHRC=bashrc
VIM=vim
GIT=git
cd /
for CONF in $BASHRC $VIM $GIT ; do
    echo [+] Configuring $CONF
    $BASE/$CONF/install.sh
done
