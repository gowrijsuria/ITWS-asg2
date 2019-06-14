#!/bin/bash
df -h | grep "/dev/sda" | tr -s " "| cut -d " " -f 1 | while read file
do
	usg=`df -h $file | grep "/dev/sda" | tr -s " " | cut -d " " -f 5 |cut -d "%" -f 1`
	
	if (( $usg >= $2 ))
		then
		echo "CRITCAL, $file , $usg%"
		fi
	if (( $usg < $1 ))
		then 
		echo "OK, $file , $usg%"
		fi
	if (( $usg >= $1 && $usg < $2 ))
		then
		echo "WARNING, $file , $usg%"
	fi
done		
	   
