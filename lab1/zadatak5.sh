#!/bin/bash

if [ ! $# -eq 2 ];then
 echo -e "Argument number error"
 exit 1
fi

source=$1
pattern="$2"

if [ ! -d $source ];then
 echo "Source is not a directory"
 exit 1
fi

echo "Source: $1"
echo "Pattern: $2"

count=$(find $source -name "$pattern" -print0 | wc -l --files0-from=- | tail -n -1 | cut -d " " -f -1)
echo "------------------"
echo "Final count: $count"


