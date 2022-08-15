#! /bin/bash

if [ $# -ne 1 ]; then
    echo "Invalid argument number."
    exit 1
fi

DATE=`date`

git add .

MSG="$1 on $DATE"

git commit -m "$MSG"
git push