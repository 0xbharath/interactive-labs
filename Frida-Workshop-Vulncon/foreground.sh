#!/bin/bash


## Install UV project/package manager

curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

mkdir frida-playground
cd frida-playground/
uv venv
source .venv/bin/activate
uv pip install frida-tools
frida

tmux new-session -c ~/frida-playground/ -n frida-workshop 'bash --rcfile <(echo "source ./venv/bin/activate; exec bash")'

# Setup completed

