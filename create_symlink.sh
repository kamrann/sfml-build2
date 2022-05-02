#!/bin/bash

if [ $# -ne 2 ]
then
    echo "usage: <source-path> <destination-path>"
fi

SRC_PATH=$1
DST_PATH=$2
SRC_NAME=$(basename $SRC_PATH)
DST_NAME=$(basename $DST_PATH)

SRC_ROOT=$(dirname $SRC_PATH)
if [ "$SRC_NAME" == "$DST_NAME" ]
then
    DST_ROOT=$(dirname $DST_PATH)
else
    DST_ROOT=$DST_PATH
fi

SRC_FILES=$(find "$SRC_PATH" -name "*")

for src_path in $SRC_FILES
do
    dst_path=$(echo -n "$src_path" | sed "s|$SRC_ROOT|$DST_ROOT|g")
    if [ -f $src_path ]
    then
        echo "sym $src_path -> $dst_path"
        ln -s -r $src_path $dst_path
    else
        echo "dir $src_path -> $dst_path"
        mkdir -p $dst_path
    fi
done
