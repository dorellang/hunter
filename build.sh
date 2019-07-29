#!/bin/bash

# We want to see what is executed and fail on bad exit codes
set -ex

# download image and vm
curl https://get.pharo.org/64/70+vm | bash

./pharo Pharo.image metacello install "filetree://src" BaselineOfHunter --install=development
./pharo Pharo.image eval --save '(IceRepositoryCreator new repository: nil; location: FileSystem workingDirectory; createRepository) register'

# if the --dev command-line flag was set, stop here.
if [[ $* == *--dev* ]]
then echo "Ready for development"; exit 0
else echo "Deploying Hunter as standalone application..."
fi

./pharo Pharo.image eval --save "HNDeploymentScript deploy"
echo "Ready. Open Hunter with start.sh script."
