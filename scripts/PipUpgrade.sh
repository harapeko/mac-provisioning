#!/bin/bash

which pip > /dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "[already pip upgrade]"
else
	echo "[upgrade pip]"
	sudo -H pip3 install -U pip
	echo "[upgraded pip]"
fi
