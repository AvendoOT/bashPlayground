#!/bin/bash

for name in `ls | grep -iE '[0-9]{4}-02-[0-9]{2}'`
do
	date=`echo $name | grep -oE '[0-9]{4}-02-[0-9]{2}'`    
        day=`echo $date | cut -d "-" -f 3`
        month=`echo $date | cut -d "-" -f 2`
        year=`echo $date | cut -d "-" -f 1`
        echo "datum: $day-$month-$year"

        echo "--------------------------------------------------"

        cut $name -d '"' -f 2 | sort | uniq -c | sort -nr

done

