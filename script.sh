#!bin/bash
yum update -y
yum install docker -y
service docker start
systemctl enable docker
usermod -a -G docker ec2-user
