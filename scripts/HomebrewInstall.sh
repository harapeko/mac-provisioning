#!/bin/sh

brew -v > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "[already Homebrew]"
else
  echo "[install Homebrew]"
  arch -arm64e /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/harapeko/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  exec $SHELL -l
  echo "[installed Homebrew]"
fi
