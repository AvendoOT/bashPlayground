#!/bin/bash

grep -i 'banana\|jabuka\|jagoda\|dinja\|lubenica' namirnice.txt

grep -vi 'banana\|jabuka\|jagoda\|dinja\|lubenica' namirnice.txt > ne-voce.txt

grep -rE '[A-Z]{3}[0-9]{6}' ~/projekti/
#grep -rE '[A-Z]{3}[0-9]{6}' ~/Projects/
echo "------------------------"
find ./ -mtime +7 -mtime -14 -ls

for i in $(seq 15);do echo $i; done


