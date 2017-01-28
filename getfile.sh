#!/bin/bash

# check file exists
for file in infolist infoalllist
do
  if [ -e info/$file ]; then
    rm info/$file
  fi
done

# get early 3 files
allfiles=`ls info | sort -r`

for file in infolist infoalllist
do
  i=0
  for filepath in $allfiles; do
    if [ $file = "infolist" ] && [ $i -eq 3 ]; then
      break
    fi
    # except extention(.html)
    basename $filepath .html >> info/$file
    i=$(( i + 1 ))
  done
done
