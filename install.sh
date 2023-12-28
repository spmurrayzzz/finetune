#!/usr/bin/env bash

# ensure python version is 3.9 or higher
pycheck=`python3 -c "import sys; print(sys.version_info >= (3,9))"`

echo "Checking python version..."
if [ $pycheck = "False" ]; then
  echo "Python version is too low. Please install python 3.9 or higher."
  exit 1
fi

# setup virtual environment
if [ ! -d "venv" ]; then
  echo "Setting up virtual environment..."
  python -m venv venv
fi

source venv/bin/activate
pip install --upgrade pip

# install dependencies
git submodule update --init --recursive
pip install packaging
pip install -e 'axolotl[flash-attn,deepspeed]'
