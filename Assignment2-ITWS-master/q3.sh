#!/bin/bash
for i in `find . -name "*.txt"`
do
	k=`cat $i | grep $1 | wc -l`
	echo "$k lines in $i "
done	
if (( $k >= 1 ))
	then
		exit 0
	else
		exit 1
		fi

	
