#!/bin/bash

# 1st: setup static ip address on the server

cd /usr/local/src/

wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz

sudo tar xf noip-duc-linux.tar.gz

cd noip-2.1.9-1/

make install
