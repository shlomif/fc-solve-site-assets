#!/bin/bash

echo "Added the Win{32,64} $(perl -e 'shift =~ /([0-9]+\.[0-9]+\.[0-9]+)/ and print $1' "$@") binaries"
echo
for cmd in sha256sum sha512sum sha3-512sum
do
    l="$cmd $@"
    echo "\$ $l"
    eval "$l"
done
