#!/bin/bash

#      Dotfiles install script
# To install, just run the following command. You must have ruby, rake, git,
# and zsh installed.
#
# curl -L https://raw.githubusercontent.com/kimhin/daviddavis-dotfiles/master/install.sh | sh
#

# install oh-my-zsh
if [ -e "/bin/zsh" ]
then
  if [ ! -d "~/.oh-my-zsh" ]
  then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
  fi
fi

# get the dotfiles
git clone --recursive https://github.com/kimhin/daviddavis-dotfiles.git ~/.dotfiles

# install vim plugins
cd ~/.dotfiles
rake
vim +BundleInstall +qall
