#!/bin/bash
echo "enter name and birthdate(yyyy/mm/dd)"
read name
read birthdate

d=`date "+%Y"`
k=`echo $birthdate | cut -d '-' -f1`

dd=`date "+%d"`

bd=`echo $birthdate | cut -d '-' -f3`
dm=`date "+%m"`
bm=`echo $birthdate | cut -d '-' -f2`


c=$((d - k))
if [[ "$dd" == "$bd" && "$dm" == "$bm" ]]
	 then
	 	echo "Happy Birthday,$name.You are $c years old today!"
	fi
