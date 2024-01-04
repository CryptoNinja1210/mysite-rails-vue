#!/usr/bin/bash

cat /etc/os-release
yum update -y gcc openssl-devel readline-devel zlib-devel make tar libyaml-devel xz curl libpq-dev
amazon-linux-extras enable postgresql14
yum install postgresql-server -y
ls /usr/pgsql-14/bin/pg_config

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
ruby --version
gem install pg -- --with-pg-config=/usr/pgsql-14/bin/pg_config

# project build
#sudo apt install libpq-dev
#sudo yum install postgresql-devel
#sudo zypper in postgresql-devel
#sudo pacman -S postgresql-libs

#npm i
#bundle update
bundle update
#bundle exec rake bormashino:download
#(cd src && bundle)

cd ..
ruby config.ru
