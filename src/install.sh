#!/bin/bash

sudo apt update
sudo apt install git -y
sudo apt install -y gstreamer1.0-plugins-bad gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-libav -y
sudo apt install -y gstreamer1.0-gtk3 -y
sudo apt install -y libglib2.0-dev libgstreamer-plugins-base1.0-dev -y
sudo apt install -y libnice-dev gstreamer1.0-nice -y
sudo apt install build-essential pkg-config libsoup-3.0-dev libjson-glib-dev -y

git clone https://github.com/meetecho/simple-whep-client

cd simple-whep-client
make clean
make