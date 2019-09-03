#!/bin/sh

set -e

root_dir="$1"
match="$2"

cd $root_dir
find . -type f -name "$match" -print0 |
  while IFS= read -r -d '' file
    do convert -verbose -density 500 -resize 800 "${file}" "${file%.*}.png"
  done
