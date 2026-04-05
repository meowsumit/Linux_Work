#!/bin/bash
# Monitoring the free space 
DISK_SPACE=$(df -H | grep "sda2" | awk '{print$5}'|tr -d %)

TO="kumarsk2sumit@gmail.com"

if [[ $DISK_SPACE -ge 80 ]]
then
    echo "WARNING!!!!, disk space is low $DISK_SPACE %" | mail -s "Disk Space Alert!!" $TO
else
    echo "All Good"
fi
