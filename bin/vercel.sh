#!/usr/bin/bash

yum install -y gcc openssl-devel readline-devel zlib-devel make tar libyaml-devel xz curl
# rbenv install
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
(cd ~/.rbenv && src/configure && make -C src)
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
~/.rbenv/bin/rbenv init
echo 'eval "$(rbenv init - bash)"' >> ~/.bash_profile
source ~/.bash_profile

mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# required ruby install
rbenv rehash
rbenv install 3.2.2
rbenv global 3.2.2
rbenv --version

#rbenv install 3.2.2 | rbenv global 3.2.2

# project build
#npm i
#bundle
#bundle exec rake bormashino:download
#(cd src && bundle)
