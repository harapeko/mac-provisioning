#!/bin/bash

which pip > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "[already pip]"
else
	echo "[install pip]"
	sudo easy_install pip
	echo "[installed pip]"
fi

which ansible > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "[already ansible]"
else
	echo "[install ansible]"
	sudo pip install ansible
	echo "[installed ansible]"
fi
