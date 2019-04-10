#!/bin/bash
echo "Step 1: Installing Docker & docker-compose"

sudo yum -y update

sudo yum install -y docker

sudo usermod -a -G docker ec2-user

sudo service docker start

sudo service docker status

sudo docker run hello-world

sudo docker run concourse/concourse --help

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null

sudo chmod +x /usr/local/bin/docker-compose

sudo reboot now
