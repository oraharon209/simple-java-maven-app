#! /bin/sh
sudo apt-get update -y
sudo apt-get install docker.io -y
sudo systemctl start docker
sudo usermod -a -G docker $USER
sudo systemctl enable docker
sudo systemctl restart docker
sudo docker run -d oraharon/maven_project:latest
