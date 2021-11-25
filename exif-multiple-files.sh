#!/bin/bash

shopt -s extglob
folder=./*
for file in $folder
do
    echo "=======================================================================================" >> output.out
    exiftool "$file" >> output.out
done
