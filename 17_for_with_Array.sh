#!/bin/bash

myArray=(1 3 4 7 hello hi )

length=${#myArray[*]}

for (( i=0;i<$length;i++ ))
do
    echo "Value of array is ${myArray[$i]}"
done

