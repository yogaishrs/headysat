#!/bin/bash
#This programme creates ansible user,deploy and run  jenkins,nodejs,nginx
#Author:Yogesh S.


usrnm="yog"
sudo useradd  $usrnm -G sudo
ssh-keygen
ssh-copy-id $usrnm@localhost
git clone https://github.com/yogaishrs/headysat.git
cd ~/headysat/ansible
ansible-playbook -i ~/headysat/ansible/inventories/dev/hosts main.yml
