#!/bin/bash

PATTERNS=`cat .gitignore`

echo "Will remove: $PATTERNS"
read -r -p "Are You Sure? [Y/n] " input
 
case $input in
    [yY][eE][sS]|[yY])
    echo "Yes"
    for pattern in $PATTERNS
    do
        echo "removing $pattern"
        rm -rf $pattern
    done
    ;;
 
    [nN][oO]|[nN])
    echo "No"
       ;;
 
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac
