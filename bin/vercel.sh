#!/usr/bin/bash

cat /etc/os-release
yum update
yum install -y zypper pacman gcc openssl-devel readline-devel zlib-devel make tar libyaml-devel xz curl libpq-dev postgresql-devel
amazon-linux-extras enable postgresql14
yum install postgresql-server -y

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
rbenv local 3.2.2
gem install pg -- --with-pg-include=/path/to/libpq-fe.h/ --with-pg-lib=/path/to/libpq.so/

#npm i
#bundle update
bundle install
ruby --version
#bundle exec rake bormashino:download
#(cd src && bundle)
#rails s -e production
