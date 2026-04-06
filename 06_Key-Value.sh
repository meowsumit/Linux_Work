#!/bin/bash

#How to store key value pair
declare -A myArray


myArray=([name]=Sumit [age]=23 [City]=Bokaro)

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
