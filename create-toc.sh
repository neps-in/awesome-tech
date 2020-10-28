#!/bin/bash

usage(){
    echo "Usage: create-toc.sh outfilename.md"
}

if [ "$#" -ne 1 ]; then
    usage
    exit
fi

outfile=$1

# Adding README first line
echo "# README " > $outfile

# adding the content of banner to make readme nice
cat banner.txt > $outfile

# Add preamble for the readme
cat << EOFFF >> ${outfile}

# Readme

This repository contains quite useful resources on the following topics. 
Its in constant update, feel free to **Star** or **Watch** this repository, so that you get update notification as and when we update.

EOFFF

while read -r line
do
    # Extract the first line of each file.
    fileheading=$(head -n 1 $line)
    
    # Remove the leading pound symbol
    fileheading="${fileheading:1}"
    
    echo "* [$fileheading]($line)" >> ${outfile}
done < <(ls *.md)

# Add credit 
cat << EOFFF >> ${outfile}

#### Note

This file was auto generated by 

* Table of content generator [create-toc.sh](create-toc.sh)

EOFFF