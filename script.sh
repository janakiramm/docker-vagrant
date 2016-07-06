#!/bin/bash
sudo apt-get update
sudo apt-get install linux-image-extra-$(uname -r)
sudo apt-get install apt-transport-https ca-certificates
sudo apt-get purge lxc-docker
sudo curl -fsSL https://experimental.docker.com/ | sh
sudo echo "DOCKER_OPTS=\"-H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock\"" >> /etc/default/docker
sudo service docker restart