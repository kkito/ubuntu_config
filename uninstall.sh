#!/bin/bash

function unlink_config(){

    config_file=`realpath ~`/.$1
    if [ -L $config_file ]
    then
        echo "$config_file is a symbol link file ,so deleted"
        rm $config_file
    else
        echo "do nothing"
    fi
}

unlink_config tmux.conf
unlink_config gitconfig
unlink_config gitignore
unlink_config vimrc

