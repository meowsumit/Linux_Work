#!/bin/bash

# And Oprator

read -p "What is your age?:  " age
read -p "Your country?:  " country 

if [[ age -ge 18 ]] && [[ country -eq "India" ]]
then
    echo "You can Vote"
else
    echo "You can't Vote"
fi

