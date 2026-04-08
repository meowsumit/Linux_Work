#!/bin/bash

# Script should be executed with sudo/root access.
if [[ "$UID" -ne 0  ]]
then
    echo "Please run with sudo or root."
    exit 1
fi

# User should provide atleast one argument as username else guide him/her.
if [[ "$#" -lt 1 ]]
then
    echo "usage: $0 USER_NAME COMMENT..."
    echo "Create a user with name USER_NAME & COMMENTS..."
    exit 1
fi

# Store 1st Argus as a USER_NAME
USER_NAME="$1"

# In case of more than one args, store it as account comments
shift
COMMENT="$*"

# Create a password.
PASSWORD=$(date +%s%N)

# Create a user
useradd -c "$COMMENT" -m "$USER_NAME"

# Check if user successfully created or not 
if [[ $? -ne 0 ]]
then
    echo "The Account could not be created"
    exit 1
fi

# Set the Password for the user
echo "$USER_NAME:$PASSWORD" | chpasswd

# Check if password is successfully created or not.
if [[ $? -ne 0 ]]
then
    echo "Password could not be set"
    exit 1
fi

# Force Password change on first login
passwd -e "$USER_NAME"

# Display  the username,password and the host where the user was created
echo
echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "Hostname: $(hostname)"
echo
