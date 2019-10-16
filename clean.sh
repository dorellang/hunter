#!/bin/bash

PATTERNS=`cat .gitignore`

echo "ATTENTION! This script removes all .gitignore'd files and directories:"
echo ""
    for pattern in $PATTERNS
    do
        echo "`ls -1 $pattern 2>/dev/null | wc -l` occurences: $pattern"
    done
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
