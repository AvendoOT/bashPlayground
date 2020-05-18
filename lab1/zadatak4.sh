#!/bin/bash

# $1 => izvorno kazalo
# $2 => novo kazalo

if [ $# == 2 ]; then
	# ako ne postoji novo kazalo, stvori ga
	if [ ! -d $2 ]; then
		mkdir $2
	fi
	
	for photo in $(ls $1); do
		folder="$2/$(stat -c %y "$1/$photo" | cut -c 1-7)"
		if [ ! -d $folder ]; then
			mkdir $folder	
		fi
		mv "$1/$photo" $folder
	done
fi



