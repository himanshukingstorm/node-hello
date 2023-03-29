#!/bin/bash

echo "Enter the number of days: "
read days

echo "Enter the path of directory: "
read x

echo "The following files are older than $days days:"
find $x -maxdepth 1 -type f -mtime +$days -print

echo "Do you want to continue? (Y/N)"
read answer

if [[ $answer == "Y" || $answer == "y" ]]; then
    echo "Continuing..."
    './test.sh'
else
    echo "Exiting..."
    exit 1
fi
