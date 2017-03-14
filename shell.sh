#!/bin/bash

echo "Starting shell.sh..."

# Install Chef.
curl -LO https://omnitruck.chef.io/install.sh && sudo bash ./install.sh && rm install.sh

# Update packages and install Docker.
sudo yum -y update
sudo yum -y install docker

# Install nginx server.
sudo yum -y install epel-release
sudo yum -y install nginx

exit 0