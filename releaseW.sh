#!/bin/bash

# We want to fail on bad exit codes
set -e

echo ""
echo " ------------------"
echo "| Releasing Hunter |"
echo " ------------------"
echo ""

DIRNAME="release-`git rev-parse --short HEAD`"
mkdir $DIRNAME
cp -r pharo pharo-ui pharo-vm Pharo* start.sh $DIRNAME

EWDIR="$DIRNAME/esprima-bin-wrapper/dist"
mkdir -p $EWDIR
cp "esprima-bin-wrapper/dist/esprima-bin-wrapper.node.js" $EWDIR

ZIPNAME="$DIRNAME.zip"
#./7z.exe a -r $ZIPNAME $DIRNAME
"/c/Program Files/7-Zip/7z.exe" a -r $ZIPNAME $DIRNAME

echo ""
echo " ---------------------------"
echo "| Release Finished: SUCCESS |"
echo " ---------------------------"
echo ""
echo "Created file $ZIPNAME"
