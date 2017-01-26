#!/bin/bash

# check file exists
if [ -e infolist ]; then
  rm infolist
fi

# get early 3 files
files=`ls info | sort -r | head -n 3`

# except extention(.html)
for filepath in $files; do
  basename $filepath .html >> infolist
done

