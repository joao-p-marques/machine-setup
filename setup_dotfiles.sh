#!/bin/bash

# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=$PWD/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
# list of files/folders to symlink in homedir
files="vimrc gitconfig tmux.conf"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory,
# then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
    echo "$file ...done"
done

# Do the same for config.fish
file=config.fish
echo "Moving any existing $file from ~/.config/fish/ to $olddir"
mv ~/.config/fish/$file ~/dotfiles_old/
echo "Creating symlink to $file in ~/.config/fish/ ."
ln -s $dir/$file ~/.config/fish/$file
echo "$file ...done"

# Do the same for init.vim
file=init.vim
echo "Moving any existing $file from ~/.config/nvim/ to $olddir"
mv ~/.config/nvim/$file ~/dotfiles_old/
echo "Creating symlink to $file in ~/.config/nvim/ ."
ln -s $dir/$file ~/.config/nvim/$file
echo "$file ...done"
