#!/bin/bash

cd provisioning > /dev/null 2>&1
# `--ask-become-pass` is for `xcodebuild -license accept`
ansible-playbook -i hosts site.yml --ask-become-pass