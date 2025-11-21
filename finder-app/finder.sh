#!/bin/bash

filesdir=$1
searchstr=$2

if [[ -z "$filesdir" || -z "$searchstr" ]]; then
    echo "Missing arguments."
    echo "Usage: $0 <directory-to-search> <string-to-search>"
    exit 1
fi

if [[ -d "$filesdir" ]]; then
    X=$(find "$filesdir" -maxdepth 2 -type f | wc -l)
    Y=$(grep -r "$searchstr" "$filesdir" | wc -l)
    # echo "Number of files in directory $filesdir: $X"
    # echo "Number of matching lines: $Y"
    echo "The number of files are $X and the number of matching lines are $Y"
else
    echo "${filesdir} is not a directory."
    exit 1
fi