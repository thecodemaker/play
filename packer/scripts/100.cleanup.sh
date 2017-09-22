#!/bin/bash -eux

echo "_ - _ - _ - _ - _ - Cleanup - _ - _ - _ -  _ - _ - _ - _ - _ - "

# Apt cleanup.
apt autoremove -y
apt update -y

# Delete unneeded files.
#rm -f /home/vagrant/*.sh

echo "Wait some time"

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync