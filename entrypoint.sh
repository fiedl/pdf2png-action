#!/bin/sh

set -e
set -v

export root_dir="$1"
export match="$2"

echo $root_dir
echo $match

cd $root_dir
find . -type f -name "$match" -print0

which convert
convert -verbose -density 500 -resize 800 "test.pdf" "test-output.png"
convert -verbose -density 500 -resize 800 "./test.pdf" "test-output-2.png"

find . -type f -name "$match" -print0 |
  while IFS= read -r -d '' file; do
    echo "Converting $file to ${file%.*}.png ..."
    convert -verbose -density 500 -resize 800 "${file}" "${file%.*}.png"
  done

pwd
ls
