#!/usr/bin/bash

# rbenv install
sudo apt update
sudo apt install rbenv
rbenv init
# Load rbenv automatically by appending
# the following to ~/.zshrc:

eval "$(rbenv init - zsh)"

# required ruby install
rbenv install 3.2.2 | rbenv global 3.2.2

# project build
#npm i
#bundle
#bundle exec rake bormashino:download
#(cd src && bundle)
