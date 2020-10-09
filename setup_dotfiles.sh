#!/bin/bash

# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=$PWD/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
# list of homedirfiles/folders to symlink in homedir
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

# Do the same for fish functions
file=fish_prompt.fish
echo "Moving any existing $file from ~/.config/fish/functions to $olddir"
mv ~/.config/fish/functions/$file ~/dotfiles_old/
echo "Creating symlink to $file in ~/.config/fish/functions/ ."
ln -s $dir/$file ~/.config/fish/functions/$file
echo "$file ...done"

# Do the same for vscode settings
file=vscode-settings.json
echo "Moving any existing $file from ~/.config/Code/User/ to $olddir"
mv ~/.config/Code/User/settings.json ~/dotfiles_old/
echo "Creating symlink to $file in ~/.config/Code/User/settings.json ."
ln -s $dir/$file ~/.config/Code/User/settings.json
echo "$file ...done"

# Do the same for workspace settings
file=workspaces-data.json
echo "Moving any existing $file from ~/.var/app/com.github.devalien.workspaces/data/com.github.devalien.workspaces/ to $olddir"
mv ~/.var/app/com.github.devalien.workspaces/data/com.github.devalien.workspaces/data.json ~/dotfiles_old/
echo "Creating symlink to $file in ~/.var/app/com.github.devalien.workspaces/data/com.github.devalien.workspaces/data.json ."
ln -s $dir/$file ~/.var/app/com.github.devalien.workspaces/data/com.github.devalien.workspaces/data.json
echo "$file ...done"

# Do the same for ulaucher settings
echo "Moving any existing file from ~/.config/ulauncher to $olddir"
mv ~/.config/ulauncher/*.json ~/dotfiles_old/
dir=$PWD/ulauncher
files="extensions.json shortcuts.json settings.json"
  for file in $files; do
  echo "Creating symlink to $file in ~/.config/ulaucher ."
  ln -s $dir/$file ~/.config/ulauncher
  echo "$file ...done"
done
