#!/bin/bash

# Update package lists and install necessary dependencies

# Clone the nSnake repository and install it

git clone https://github.com/alexdantas/nSnake.git /opt/nsnake && \
    cd /opt/nsnake && \
    make && \
    make install

apt-get update

apt-get install -y \
    gdb \
    strace \
    ltrace \
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

rm -rf /var/lib/apt/lists/*