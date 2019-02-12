#!/bin/bash
cd ~/Downloads
wget -O Firefox-Dev-Edition-Setup.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"
tar xjf Firefox-Dev-Edition-Setup.tar.bz2
sudo mv firefox /usr/local/firefox-dev-edition
cp firefox-dev-edition.desktop ~/.local/share/applications/
