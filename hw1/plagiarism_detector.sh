#!//usr/bin/bash

#Make sure that the user inputted only 2 arguments
if [ ![ [ $# -ge 1 ] && [ $# -le 2 ] ] ] ; then
    echo "This is invalid number of arguments"
    echo "This program should be ran like this: "
    echo "./plagiarism_detector.sh <file> <directory>"
    exit 1
fi

#Make sure that the user did input a file and a directory
if [ ! -f $1 ] ; then
    echo "Please input a file for the first argument"
    exit 1
elif [ ! -d $2 ] ; then
    echo "Please input a directory for the second argument"
    exit 1
fi


