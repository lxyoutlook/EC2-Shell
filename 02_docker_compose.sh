#!/bin/bash
echo "Preparing Docker-compose"

sudo service docker start
sudo service docker status

mkdir concourse-docker
cd concourse-docker
curl -O https://raw.githubusercontent.com/lxyoutlook/EC2-Shell/master/docker-compose.yml

