#!/bin/bash

#Checking file exist or not
#filePath="/home/sumitkumar/myscripts/"
filepath="$( realpath meow.test )"
if [[ -f $filepath ]]
then
    echo "File exist"
else
    echo "No file not exist"
    touch $filepath
fi
