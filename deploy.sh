#!/bin/bash

echo "Pull app..."
sudo apt install git
git clone -b monolith https://github.com/express42/reddit.git

echo "Run app..."
cd reddit && sudo bundle install

sudo puma -d
ps aux | grep puma
