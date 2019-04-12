#!/bin/bash 

echo "******************************************"
echo "*** Installing Docker & docker-compose ***"
echo "******************************************"

sudo yum -y update

sudo yum install -y docker

sudo usermod -a -G docker ec2-user

sudo service docker start

sudo service docker status

sudo docker run hello-world

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null

sudo chmod +x /usr/local/bin/docker-compose

mkdir concourse-docker

cd concourse-docker

curl -O https://raw.githubusercontent.com/lxyoutlook/EC2-Shell/master/docker-compose.yml

echo " "
echo "************************************************************************"
echo "*** Docker & docker-compose installation is DONE!                    ***"
echo "*** Please modify the CONCOURSE_EXTERNAL_URL in the dock-compose.yml ***"
echo "*** then execute $ sudo /usr/local/bin/docker-compose up -d          ***"
echo "************************************************************************"
