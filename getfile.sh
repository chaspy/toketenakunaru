#!/bin/bash

# check file exists
if [ -e info/infolist ]; then
  rm info/infolist
fi
if [ -e info/infoalllist ]; then
  rm info/infoalllist
fi

# get early 3 files
files=`ls info | sort -r | head -n 3`
allfiles=`ls info | sort -r`

# except extention(.html)
for filepath in $files; do
  basename $filepath .html >> info/infolist
done
for filepath in $allfiles; do
  basename $filepath .html >> info/infoalllist
done
