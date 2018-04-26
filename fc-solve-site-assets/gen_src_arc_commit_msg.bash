#!/bin/bash

echo "Added the $(perl -e 'shift =~ /([0-9]+\.[0-9]+\.[0-9]+)/ and print $1' "$@") source tarball"
echo
for cmd in sha256sum sha512sum
do
    l="$cmd $@"
    echo "\$ $l"
    eval "$l"
done
