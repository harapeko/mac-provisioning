#!/bin/sh

xcodebuild -version > /dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "[already Xcode]"
else
	echo "[install Xcode]"
	xcode-select --install
	echo "[installed Xcode]"
fi
