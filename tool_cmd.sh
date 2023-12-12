#!/bin/bash

sudo apt-get install vim

echo "alias cr='cd ros'" >> ~/.bashrc
echo "alias cs='cd ros/src'" >> ~/.bashrc
echo "alias ccm='cr && catkin_make'" >> ~/.bashrc
echo "alias vb='vim .bashrc'" >> ~/.bashrc
