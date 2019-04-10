#!/bin/bash
echo "Step 1: Preparing Docker-compose"

sudo service docker start
sudo service docker status

mkdir concourse-docker
cd concourse-docker
curl -o docker-compose.yml https://raw.githubusercontent.com/lxyoutlook/EC2-Shell/master/docker-compose.yml

