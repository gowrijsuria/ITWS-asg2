#!/bin/bash
for((i=1;i<=10;i++))
	do
		echo "$((i * i))"
	 done
for((i=1;i<=10;i++))
	do
		echo "$((i ** i))"
	done
a=0
b=1	
c=$((a + b))
while [ $c -lt 100 ]
	do
		if [ $((c % 2)) -ne 0 ]
		then	
			echo "$c "
		fi
		c=$((a + b))
		a=$b
		b=$c	
	done
				
