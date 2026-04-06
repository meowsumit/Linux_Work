#!/bin/bash

# Checking if the user is root
if [[ $UID -eq 0 ]]
then
    echo "The user is root"
else
    echo "The User is not root"
fi
