#!/bin/bash

# Update the package list and install make and hugo
apt-get update
apt-get install -y hugo make

# Build the website
make build