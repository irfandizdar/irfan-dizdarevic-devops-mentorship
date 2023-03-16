#!/bin/bash
# reading values from a file
file="./files/states"
for state in $(cat $file)
do
	echo "Visit beautiful $state"
done
