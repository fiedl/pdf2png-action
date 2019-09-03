#!/bin/bash

set -e
set -v

export root_dir="$1"
export match="$2"

echo $root_dir
echo $match

cd $root_dir

for pdfile in $match ; do
  echo "Converting $pdfile to ${pdfile%.*}.png ..."
  convert -verbose -density 500 -resize '800' "${pdfile}" "${pdfile%.*}".png
done
