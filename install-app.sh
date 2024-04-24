#!/bin/bash
mkdir /app 
git clone https://github.com/mate-academy/azure_task_12_deploy_app_with_vm_extention.git
mv azure_task_12_deploy_app_with_vm_extention/app/* /app
apt-get update -y
apt-get install python3-pip -yq
cd /app
mv todoapp.service /etc/systemd/system/ 
systemctl daemon-reload
systemctl start todoapp
systemctl enable todoapp
