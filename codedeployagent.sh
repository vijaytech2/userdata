#!/bin/bash
sudo su -
apt update -y
apt install docker.io -y
apt install ruby-full
apt install wget
cd /home/ubuntu
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
./install auto
service codedeploy-agent start
