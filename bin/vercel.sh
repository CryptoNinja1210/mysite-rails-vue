#!/usr/bin/bash

# rbenv install
git clone https://github.com/rbenv/rbenv-win.git %USERPROFILE%/.rbenv
setx PATH "%USERPROFILE%\.rbenv\bin;%USERPROFILE%\.rbenv\shims;%PATH%"

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
