#!/bin/bash

# Getting values from file name.txt

FILE=/home/sumitkumar/myscripts/name.txt

for name in $(cat $FILE)
do
    echo "Name is $name "
done
