#!/bin/bash


no=6

for i in 1 2 3 4 5 6 7 8 9 10
do
    if [[ no -eq  i ]]
    then
        echo "$no is the number"
        break
    fi
    echo "No. is $i "
done
 
