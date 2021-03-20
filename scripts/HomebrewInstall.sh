#!/bin/sh

brew -v > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "[already Homebrew]"
else
  echo "[install Homebrew]"
  arch -arm64e /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/harapeko/.zprofile
  # ↑再起動しても読み込んでくれない？でも手動でシェル再起動してmake再実行すれば動くのでよし
  exec $SHELL -l
  echo "[installed Homebrew]"
fi
