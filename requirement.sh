#!/bin/bash
# Install requirement and package for Arch (btw)

sudo pacman --needed -S clang nodejs npm python python-rope python-pip \
fd git tar curl unzip ripgrep languagetool

pip install --user --break-system-packages yalafi
