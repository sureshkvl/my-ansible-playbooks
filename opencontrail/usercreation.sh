#!/bin/bash

sudo useradd -s /bin/bash -d /opt/stack -m stack
echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack
#stop the unattended upgrades(to avoid dpkg lock issue)
sudo systemctl stop unattended-upgrades

