#!/bin/bash

# while IFS="," read id name age
# do
#    echo "Id is $id "
#    echo "Name is $name"
#    echo "Age is $age"
# done < test.csv


# For remoing 1st line 

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
   do
       echo "Id is $id "
       echo "Name is $name"
       echo "Age is $age"
   done 

