#!/bin/bash

# `--ask-become-pass` is for `xcodebuild -license accept`
cd provisioning > /dev/null 2>&1
ansible-playbook -i hosts site.yml --ask-become-pass
