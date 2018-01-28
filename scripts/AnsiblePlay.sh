#!/bin/bash

cd provisioning > /dev/null 2>&1
ansible-playbook -i hosts site.yml