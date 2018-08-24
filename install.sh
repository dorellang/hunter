#!/bin/bash

# We want to see what is executed and fail on bad exit codes
set -ex


# download esprima
# curl -O https://raw.githubusercontent.com/dorellang/esprima-bin-wrapper/master/dist/esprima-bin-wrapper.node.js

# download image and vm
curl get.pharo.org/70+vm | bash

REPO="filetree://src"
./pharo Pharo.image metacello install $REPO BaselineOfHunter --install=development
