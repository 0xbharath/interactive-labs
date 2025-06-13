#!/bin/bash

# Update package lists and install necessary dependencies
RUN apt-get update && apt-get install -y \
    gdb \
    strace \
    ltrace \
    && rm -rf /var/lib/apt/lists/*

# Clone the nSnake repository and install it
RUN git clone https://github.com/alexdantas/nSnake.git /opt/nsnake && \
    cd /opt/nsnake && \
    make && \
    make install