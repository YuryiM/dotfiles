#!/bin/bash

packages=""

while IDF='' read -r line; do
  # If line doesn't begin with '#'
  if ! [[ $line =~ ^#.* ]]; then
     packages+=" $line"
  fi
done < pkglist.txt
