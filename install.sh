#!/bin/bash

function link_config(){
    config_file=`realpath ~`/.$1
    if [ -e $config_file ]
    then
        echo "$config_file already exit"
    else
        abspath=`realpath ./src/$1`
        ln -s $abspath $config_file
    fi
}

link_config tmux.conf
link_config gitconfig
link_config gitignore
link_config vimrc

