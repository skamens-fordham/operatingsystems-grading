#!/bin/bash

make hello_world

if [ $? == 0 -a -f hello_world ]
then
    # Assume they did the C++ version.
    output=`./hello_world`
else
    output=`/usr/bin/python3 ./hello_world.py`
fi

case "$output" in 
    "Hello, World!") 
        echo "Test passed!"
        exit 0
        ;;
    *) echo "Test failed!"
        exit 1
        ;;
esac
    

