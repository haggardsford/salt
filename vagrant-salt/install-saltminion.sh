#!/bin/bash

# A shell script to install saltstack on Ubuntu

wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/2017.7/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/2017.7 xenial main" > /etc/apt/sources.list.d/saltstack.list
sudo apt-get update

# You may want both salt-master and salt-minion, uncomment one or both depending on what you need

#sudo apt-get install salt-master
sudo apt-get install salt-minion -y

echo "
master: 159.89.114.22
id: drop-minion
" >> /etc/salt/minion

#restart salt minion
sudo service salt-minion restart

