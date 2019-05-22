#!/bin/sh

echo Usage $1 $2 "#5592f6" "#ff6970"

src=$1
dest=$2

src_color=$3
dest_color=$4

cp $src $dest
sed -i -e "s/${src_color}/${dest_color}/g" $dest

