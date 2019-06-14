#!/bin/bash
i=31
j=0
ping -c $1 google.com | while read pong; do echo -e "\e[1;"$i"m$(date) -- $pong\e["$j"m";
i=$((i+1))
j=$((j+1))

if [ $i -eq 38 ]
	then 
		i=31
fi

if [ $j -eq 2 ]
	then
	 	j=0
fi
done				
