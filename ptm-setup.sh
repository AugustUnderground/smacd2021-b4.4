#!/bin/sh

dir="./lib"
url="http://ptm.asu.edu/modelcard/2006"

mkdir -p "$dir"

for tech in "130" "90" "45"; do
    fname="$tech"nm_bulk.pm
    curl --remote-name "$url/$fname"
    mv -v "$fname" "$dir/${fname%.*}.lib"
done
