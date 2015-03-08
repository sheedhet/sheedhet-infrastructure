#!/bin/sh
# Apt-install various things necessary for Ruby, guest additions,
# etc., and remove optional things to trim down the machine.
sudo ethtool -K eth0 tso off gso off # temporary hack due to Ubuntu 14.04/EC2 "rides the rocket" bug
sudo apt-get -y update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
sudo apt-get clean
sudo ssh-keygen -A # The default Ubuntu 14.04 instance does not include all host keys. This will generate them.
