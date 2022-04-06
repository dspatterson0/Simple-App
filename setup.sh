#! /bin/bash

echo "Installing VM Dependencies"
sudo apt install -y docker make npm mocha

echo "Install App Dependencies"
make install

echo "Run Tests"
make test-app

echo "Run Docker Build"
sudo docker build . -t simple-app:latest