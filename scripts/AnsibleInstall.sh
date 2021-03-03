#!/bin/bash

which ansible > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "[already ansible]"
else
	echo "[install ansible]"
	arch -arm64 brew install ansible
	zsh
	echo "[installed ansible]"
fi
