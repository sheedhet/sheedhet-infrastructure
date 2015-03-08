#!/bin/sh

#
# Install the VirtualBox guest additions
#
sudo apt-get -y install build-essential linux-headers-$(uname -r)

if [ -e /home/vagrant/.vbox_version ]; then
    VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
    VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso
    sudo mount -o loop $VBOX_ISO /mnt
    sudo sh /mnt/VBoxLinuxAdditions.run
    sudo umount /mnt
    sudo rm $VBOX_ISO
fi
