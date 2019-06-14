#!/bin/bash
if (( "$#" == 0 || "$#" > 1 ))
	then 
		echo "please enter only 1 argument"
fi		
f=$1
if [ -f "$1" ]
	then 
		`chmod u+x "$f"`
	else
		echo "error"
fi			 
