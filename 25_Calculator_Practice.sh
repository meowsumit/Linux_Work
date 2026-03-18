#!/bin/bash

# Making a fuction for Calculator

Add() {
    echo "Adding of your two number..."
    (( num=$1+$2 ))
    echo "Addition of $1 and $2 is = $num"
}

Sub() {
    echo "Subtracting of your two number..."
    (( num=$1-$2 ))
    echo "Subtraction of $1 and $2 is = $num"
}

Mult() {
     echo "Multiplying your two number..."
     (( num=$1*$2 ))
     echo "Multiplication of $1 and $2 is = $num"
}

Div() {
     echo "Dividing your two number..."
     if [[ $2 -eq 0 ]]
     then
         echo "Error: Division by zero not allowed"
     else
         ((num=$1/$2))
         echo "Division of $1 and $2 is = $num"
     fi
}

echo "This is a Calculator, Select the Best Option for you: "
echo "Select a for Addition"
echo "Select b for Subtraction"
echo "Select c for Multiplication"
echo "Select d for Division"

read choice
case $choice in
    a) 
        echo "So, You Select Addtion"
        read -p "Enter the first number you want to add " num1
        read -p "Enter the Second number you want to add " num2
        Add $num1 $num2
        ;;
    b)
        echo "So, You Select Subtraction"
        read -p "Enter the first number you want to sub " num1
        read -p "Enter the Second number you want to sub " num2
        Sub $num1 $num2
        ;;
    c)
        echo "So, You Select Multiplication"
        read -p "Enter the first number you want to mult " num1                                                              
        read -p "Enter the Second number you want to mult " num2
        Mult $num1 $num2
        ;;
    d)
        echo "So, You Select Division"
        read -p "Enter the first number you want to div " num1
        read -p "Enter the Second number you want to div " num2
        Div $num1 $num2
        ;;
    *)
        echo "NOTVALID, Please Select the correct option."
esac
