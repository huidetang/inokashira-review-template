#!/bin/sh

while [ -n "$1" ]
do
    fullname=$1
    extension=${fullname##*.}
    filename=${fullname%.*}
    if [ extension == "mermaid" ] ; then
        mmdc -i ${filename}".mermaid" -o ${filename}".png" -t neutral -b transparent
    fi
    shift
done