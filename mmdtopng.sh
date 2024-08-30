#!/bin/sh
[ "x$1" = "x" ] && exit 1
DIR=$1
for file in `\find $DIR -name '*.mermaid'`; do
    filename=${file%.*}
    mmdc -i ${filename}".mermaid" -o ${filename}".png" -t neutral -b transparent --no-sandbox
done