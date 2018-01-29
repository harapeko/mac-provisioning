#!/bin/bash

echo "[update ansible]"

pip install -U pip
# TODO:下記2つは初期のpython2でエラーがでる模様
pip install -U setuptools
pip install -U ansible

echo "[updated ansible]"