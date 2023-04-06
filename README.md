# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
# Linux Setup
This reesposity contains scrips and configuration files for setting up Linux devlopment environment. The respository contains the following files:
* bin/linux.sh: a shell script that sets up various configerations for the Linux environment.
* bin/cleanup.sh: a shell script that undoes the changes made by the linux.sh script
* Makefile: a makefile that provides two targets, linux and clean for running the setup and cleanup scripts respectively
* .vimrc: a configuration file for the Vim text editor
* .bashrc.custom: a custom configuration file for the Bash shell
##bin/linux.sh
The linux.sh scipt performs several setup tasks for the Linux environment. These include:
* Checking that the operating system is Linux
* Creating a .TRASH directory in the user's home directory if it doesn't already exist
* Backing up any existing .virmc file to .bup.vimrc and replacing it with a new .vimrc file from the etc/vimrc file in the resository
* Appending the statement source~/.dotfiles/etc/bashrc.custom to the end of the users .bashrc file
The script logs its output to a file called linuxsetup.log in the users hoem directory
##bin/cleanup.sh
The cleanup.sh script undoes the changes made by the linux.sh script. These include:
* Removing the .vimrc file and restoring any backed-up version
* Removing the source ~/.dotfiles/etc/bashrc.custom statement from the users .bashrc file
* Removing the .TRASH directory
The script logs its output to a file called linuxcleanup.log in the users hoem directory
##Makefike
The Makefile provides two targets for running the linux.sh and cleanup.sh scripts. The linux target runs the linux.sh script and has a dependency on the clean target, which runs the cleanup.sh script.
To run the setup script, simply execute the following command in the root directory of the repository

