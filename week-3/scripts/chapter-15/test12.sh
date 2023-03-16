#!/bin/bash
# redirecting file input
exec 0< ./files/testfile
count=1
while read line
do
	echo "Line #$count: $line"
	count=$[ $count + 1 ]
done
