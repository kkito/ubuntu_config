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

for file in ./src/*
do
    basefile=`basename "$file"`
    echo $basefile
    link_config $basefile
done
