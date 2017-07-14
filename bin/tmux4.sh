#!/bin/bash

dotfiles_base_path=~/.dotfiles

# Check parameters, if none, show the usage.
case $1 in 
    "d")
      # Use David Davis' tmux config file
      cp $dotfiles_base_path/vendor/__tmux_david/tmux.conf $dotfiles_base_path/
      cp $dotfiles_base_path/vendor/__tmux_david/tmux-osx.conf $dotfiles_base_path/
      echo 'done for david.'
      exit 0
      ;;
    "g")
      cp $dotfiles_base_path/vendor/__tmux_gpakosz/tmux.conf $dotfiles_base_path/
      cp $dotfiles_base_path/vendor/__tmux_gpakosz/tmux.conf.local $dotfiles_base_path/
      echo 'done for gpakosz.'
      exit 0
      ;;
    *)
      echo -e "\033[1;32mUsage: $0 (d|g) \n \033[0m"
      exit
      ;;
esac
