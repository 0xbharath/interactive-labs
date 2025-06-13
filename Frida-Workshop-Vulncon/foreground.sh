#!/bin/bash

# Update package lists
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

# Create a virtual environment
python3 -m venv /opt/venv

# Upgrade pip and install frida-tools inside the venv
/opt/venv/bin/pip install --upgrade pip
/opt/venv/bin/pip install frida-tools

# Add venv activation to user's shell startup
echo 'source /opt/venv/bin/activate' >> /root/.bashrc
