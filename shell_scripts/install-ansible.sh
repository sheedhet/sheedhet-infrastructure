#!/bin/sh

#
# Install Ansible and its dependencies
#
sudo apt-get -y update
sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get -y install python-dev python-keyczar ansible

# Install Pip from source because the Ubuntu Trust package is broken
wget -P /tmp https://bootstrap.pypa.io/get-pip.py
sudo python /tmp/get-pip.py

sudo pip install boto
