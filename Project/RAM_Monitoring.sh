#!/bin/bash

DISK_SPACE=$( free -mt | grep "Total" | awk '{print $4}')
TH=500

if [[ $DISK_SPACE -lt 250 ]]
then
    echo "WARNING!!! Your RAM is running low $DISK_SPACE"
else
    echo  "RAM Space is sufficint to use $DISK_SPACE"
fi
