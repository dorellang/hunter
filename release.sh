#!/bin/bash

# We want to fail on bad exit codes
set -e

echo ""
echo " ------------------"
echo "| Releasing Hunter |"
echo " ------------------"
echo ""

DIRNAME="hunter-`git rev-parse --short HEAD`"
mkdir $DIRNAME
cp -r pharo pharo-ui pharo-vm Pharo* start.sh $DIRNAME

EWDIR="$DIRNAME/esprima-bin-wrapper/dist"
mkdir -p $EWDIR
cp "esprima-bin-wrapper/dist/esprima-bin-wrapper.node.js" $EWDIR

ZIPNAME="$DIRNAME.zip"
zip -r $ZIPNAME $DIRNAME

echo ""
echo " ---------------------------"
echo "| Release Finished: SUCCESS |"
echo " ---------------------------"
echo ""
echo "Created file $ZIPNAME"
