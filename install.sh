#!/bin/bash
sudo apt install ansible
sudo apt update
ansible-playbook docker_install.yaml
docker build -t flask_app .
sudo docker run -d -it -p 0.0.0.0:5002:5000 --name=app flask_app
