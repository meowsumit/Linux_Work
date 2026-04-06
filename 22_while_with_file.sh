#!/bin/bash

while read myVar
do
    echo "Values from file is $myVar"
done < name.txt
