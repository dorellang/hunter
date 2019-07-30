#!/bin/bash

# We want to fail on bad exit codes
set -e

echo ""
echo " -------------------"
echo "| Downloading Pharo |"
echo " -------------------"
echo ""

curl https://get.pharo.org/64/70+vm | bash

echo ""
echo " ---------------------------------"
echo "| Loading Hunter and dependencies |"
echo " ---------------------------------"
echo ""

./pharo Pharo.image metacello install "filetree://src" BaselineOfHunter --install=development
./pharo Pharo.image eval --save '(IceRepositoryCreator new repository: nil; location: FileSystem workingDirectory; createRepository) register'



# if the --dev command-line flag was set, stop here.
if [[ $* == *--dev* ]]
then
    echo ""
    echo " -------------------------"
    echo "| Build Finished: SUCCESS |"
    echo " -------------------------"
    echo ""
    echo "Run './pharo-ui Pharo.image' to open Pharo with Hunter loaded."
    exit 0
fi

echo ""
echo " --------------------------------------------"
echo "| Deploying Hunter as standalone application |"
echo " --------------------------------------------"
echo ""

./pharo Pharo.image eval --save "HNDeploymentScript deploy"

echo ""
echo " -------------------------"
echo "| Build Finished: SUCCESS |"
echo " -------------------------"
echo ""

echo "Run './start.sh' to open Hunter."
