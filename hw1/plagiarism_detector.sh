#!//usr/bin/bash

#Make sure that the user inputted only 2 arguments
if [ $# -lt 2 ] || [ $# -gt 2 ] ; then
    echo "Invalid number of arguments."
    echo "This is the correct way to run this script: "
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

#This will get all the items that are inside the directory
#ls ./$2 | grep $1

#if the file is different from anything in the directory, it should be copied into the directory; the script should not produce any output


#if the file is the same as a file in the directory, the script should complain

#test whether files are 'the same' should be made with the diff command. 


