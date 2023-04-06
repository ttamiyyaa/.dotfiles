#!/bin/bash
# sets up the Linux environment.

# append any output from echo statements to a file called 'linuxsetup.log'.
exec &>> linuxsetup.log 2>&1

# check if the operating system type is Linux
if [[ "$(uname)" != "Linux" ]]; then
  echo "ERROR: This script only works on Linux systems." 
  exit 1
fi

# create the '.TRASH' directory in the home directory if it doesn't exist already
mkdir ~/".TRASH"

# if the '.vimrc' file exists in the home directory, change its name to '.bup_vimrc'
if [[ -f ~/.vimrc ]]; then
  mv ~/.vimrc ~/.bup\ vimrc
  echo "The current vimrc file was changed to '.bup_vimrc'." 
fi

# redirect (overwrite) the contents of the etc/vimrc file to a file called '.vimrc' in the home directory
cp /etc/vimrc ~/.vimrc

# add the statement 'source /dotfiles/etc/bashrc.custom' to the end of the .bashrc file located in the home directory
echo "source /dotfiles/etc/bashrc_custom" >> ~/.bashrc
