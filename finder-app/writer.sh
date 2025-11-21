#!/bin/bash

writefile=$1
writestr=$2

if [[ -z "$writefile" || -z "$writestr" ]]; then
    echo "Missing arguments."
    echo "Usage: $0 <file-to-write> <string-to-write>"
    exit 1
fi

dirpath=$(dirname "$writefile")

if [[ ! -d "$dirpath" ]]; then
    mkdir -p "$dirpath"
    echo "$writestr" > "$writefile"
else
    echo "$writestr" > "$writefile"
fi