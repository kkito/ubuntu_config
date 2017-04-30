#!/bin/bash

if [ -e ~/.tmux.conf ]
then
  echo "tmux config already exit"
else
  abspath=`realpath ./src/tmux.conf`
  ln -s $abspath ~/.tmux.conf
fi


if [ -e ~/.gitconfig ]
then
  echo "git config already exit"
else
  abspath=`realpath ./src/gitconfig`
  ln -s $abspath ~/.gitconfig
fi

if [ -e ~/.vimrc ]
then
  echo "vim config already exit"
else
  abspath=`realpath ./src/vimrc`
  ln -s $abspath ~/.vimrc
fi
