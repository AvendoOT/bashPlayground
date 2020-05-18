#!/bin/bash

if [ "$#" -ne 1 ]
then
echo "Argument number error - 1 argument needed"
exit 
fi

log_file=$1

if [ ! -r $ log_file ]
then
echo "File not readable"
exit 
fi

#cut -f2 -d " " $log_file | cut -f2 -d:| sort| uniq -c| sed 's/ *\([0-9]\+\) \#[0-9][0-9]\)/\2=\1/'| sort

# regex pogrešan

cat $ $log_file | cut -f 2 -d " "| sort | uniq -c | sort -n -r | sed -r 's/ *\([0-9]\+\) \([0-9][0-9]\)/\2 = \1/'
