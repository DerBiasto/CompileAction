#!/bin/sh

set -e

find -name "$1" |
while
    read file
do
    echo "$file"
    latexmk -pdf -silent -output-directory=$(dirname "$file") "$file"
done
