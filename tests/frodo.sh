#!/bin/bash

# check
if [ ! -f 'tests/frodo.sh' ]
then
    echo "Frodo must be run from the project root directory."
    exit 1
fi

# Test the programms
zig build test
