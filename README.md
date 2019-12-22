# DockerEC2InstanceScript
This script is for the EC2 Microservice Instances. This can be added in the User data under advance settings while creating EC2 instance and this will execute when the instance boots up. 

```
#!bin/bash
yum update -y                     # Update the package manager of newly creeated EC2 Instance.
yum install docker -y             # Install docker engine in the EC2 Instance.
service docker start              # Start docker engine service in the EC2 Instance.
systemctl enable docker           # Enable docker engine service to start during every restart or boot up.
usermod -a -G docker ec2-user     # Giving access ec2-user to execute dockeer commands without sudo
```
