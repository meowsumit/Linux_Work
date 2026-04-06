#!/bin/bash


#Case

echo "provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "c to check the current location"

read choice

case $choice in
    a) 
       echo "Today's Date is: "
       date
       echo "Ending..."
       ;;
    b) ls;;
    c) pwd;;
    *) echo "INVALID Choice";;
esac
    
