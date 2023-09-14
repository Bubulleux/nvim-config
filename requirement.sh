#!/bin/bash
# Install requirement and package for Arch (btw)

sudo pacman --needed -S --noconfirm clang python python-rope python-pip \
fd git tar curl unzip ripgrep languagetool zathura texlive zathura-pdf-mupdf

# pip install --user --break-system-packages yalafi
