#! /bin/bash
rvm requirements
rvm requirements
rvm install 2.4.1
rvm use 2.4.1 --default
gem install bundler
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys  D68FA50FEA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb
sudo systemctl start mongodb
sudo systemctl enable mongodb
git clone https://github.com/stasdevops/reddit_monolith.git
cd reddit_monolith
bundler install
puma -d
