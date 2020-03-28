#!/bin/bash

dir=$PWD/scripts/*

for file in $dir; do
  echo "Creating symlink to $file in ~/.local/bin/ ."
  ln -s $file ~/.local/bin/
  echo "$file ...done"
done
