#!/bin/bash

n=`cat $1 | sed '/^\s*$/d' | wc -l`
for(( i = 1; i <=$n ; i++))
	do 
	  echo $i")" `cat $1 | sed '/^\s*$/d' | sed -n "${i}p"`
	 done
	  
		
