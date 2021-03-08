#!/bin/bash

mkdir ~/.images
cp -r .config/* ~/.config/
cp -r .images/* ~/.images/
mkdir -p ~/.local/share/fonts
cp -r .local/share/fonts/* ~/.local/share/fonts
cp .zshrc ~/