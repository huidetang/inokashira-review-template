#!/bin/sh

while [ -n "$1" ]
do
    fullname=$1
    extension=${fullname##*.}
    filename=${fullname%.*}
    if [ extension == "svg"  ] ; then
        convert -density 1200 ${filename}".svg" ${filename}".png"
    fi
    shift
done