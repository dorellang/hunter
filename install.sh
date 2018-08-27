#!/bin/bash

# We want to see what is executed and fail on bad exit codes
set -ex

# download image and vm
curl get.pharo.org/70+vm | bash

REPO="filetree://src"
./pharo Pharo.image metacello install $REPO BaselineOfHunter --install=development
./pharo Pharo.image eval --save 'Hunter baseDirectory: FileSystem workingDirectory. (IceRepositoryCreator new repository: nil; location: FileSystem workingDirectory; createRepository) register'

