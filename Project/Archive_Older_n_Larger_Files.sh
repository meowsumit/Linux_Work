#!/bin/bash
# $Revision:001$
# $Mon Apr  6 08:14:34 PM IST 2026$

# $Variables$
BASE=/home/sumitkumar/myscripts/Project
DAYS=19
DEPTH=1
RUN=1

# Check if the dir exists
if [ ! -d $BASE ]
then
    echo "dir does not exit: $BASE"
    exit 1
fi

# Check 'archive' folder if not present make it
if [ ! -d $BASE/archive ]
then
    mkdir $BASE/archive
fi

# Find the list of files larger than 20MB
for i in $(find $BASE -maxdepth $DEPTH -type f -size +5M)
do
    if [ $RUN -eq 1 ]
    then
        echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $PATH/archive"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done
