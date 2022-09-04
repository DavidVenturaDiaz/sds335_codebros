#!/bin/bash

##################################################
# David Ventura Dias, 
# Abdon Verdejo-Parada, av34626
# hw1 sds335
##################################################

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
    echo "This is the correct way to run the shell"
    echo "./plagiarism_detector.sh <file> <directory>"
    exit 1
elif [ ! -d $2 ] ; then
    echo "Please input a directory for the second argument"
    echo "This is the correct way to run the shell"
    echo "./plagiarism_detector.sh <file> <directory>"
    exit 1
fi

#This gets the number of files that are in the directory
number_of_files="$(ls -la $2 | grep -c "^-rw.")"

#If the directory had no files, then it gets added automatically
if [ ! $number_of_files -eq 0 ] ; then

    #We now run through all the files in that directory
    for file in "$2"* ; do
	
	#This will get the number of lines outputted from diff
	#if the value of result is 0, then the files are the same
	# if they are not the same, then the files are different
	result="$( diff $1 $file | wc -l )" 
	
	#If the variable result is 0, then the files are identical
	if [ $result -eq 0 ] ; then
	    echo "The files $1 and $file are identical!!"
	    exit 1
	fi
    
    done
fi

#If there was no complaints then the inputted file gets coppied into the inputted directory
cp $1 ./$2
#echo "The file $1 was copied into $2 directory"
