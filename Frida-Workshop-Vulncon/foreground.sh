#!/bin/bash

# Update package lists and install necessary dependencies

apt-get update

# Install packages

apt-get install -y \
    tmux \
    build-essential \
    git \
    libncurses5-dev \
    python3 \
    python3-pip \
    python3-venv \
    vim \
    nano \
    file

# Create a virtual environment and install frida-tools

python3 -m venv /opt/venv
/opt/venv/bin/pip install --upgrade pip
/opt/venv/bin/pip install frida-tools
source /opt/venv/bin/activate