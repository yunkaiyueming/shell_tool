#!/bin/bash
#ansible all -m command -a date

ansible_group=$1
source_path = $2
target_path = $3

ansible $ansible_group -m ping
ansible $ansible_group -m shell -a "mkdir $source_path"
ansible $ansible_group -m synchronize -a "src=$source_path dest=$target_path delete=yes compress=yes"
