#!/bin/bash

backup=${!#}

if [ "$#" -lt 2  ];then
 echo -e "Argument number error"
 exit 1
fi

if [ ! -d  "$backup" ];then
 mkdir $backup
 echo "Directory created: $backup"
fi

fileCount=0
for argument; do
	#if arguments is a readable directory continue
 	if [ -d "$argument" ];then
  		continue
 	fi
 	if [ ! -r "$argument" -a -e "$argument" ];then
  		echo "Not readable: $argument"
  		continue
 	fi

 	cp "$argument" "$backup"
 	fileCount=$((fileCount+1))
done

if [ $fileCount -gt 0 ];then
 	echo "Successfully copied $fileCount files to $backup"
else
 	echo "Didn't copy files."
fi 

