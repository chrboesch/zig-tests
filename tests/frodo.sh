#!/bin/bash

# check
if [ ! -f 'tests/frodo.sh' ]
then
    echo "Frodo must be run from the project root directory."
    exit 1
fi

# test programms
for prog in progs/*.zig
do
    zig test $prog
done

