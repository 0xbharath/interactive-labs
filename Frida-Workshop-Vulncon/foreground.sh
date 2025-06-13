#!/bin/bash

# Update package lists
apt-get update

# Install packages
DEBIAN_FRONTEND=noninteractive apt-get install -y \
    tmux \
    build-essential \
    git \
    libncurses5-dev \
    python3 \
    python3-pip \
    python3-venv \
    vim \
    nano \
    file \


## Install UV project/package manager

curl -LsSf https://astral.sh/uv/install.sh | sh

# Setup 

mkdir frida-playground
cd frida-playground/
uv venv
source .venv/bin/activate
uv pip install frida-tools
frida

# Create a virtual environment
#python3 -m venv /opt/venv

# Upgrade pip and install frida-tools inside the venv
#/opt/venv/bin/pip install --upgrade pip
#/opt/venv/bin/pip install frida-tools

# Add venv activation to user's shell startup
#echo 'source /opt/venv/bin/activate' >> /root/.bashrc
