#!/bin/bash
yt=0
for j in `find -maxdepth 1 -mindepth 1 -type d`
do 
	cd $j
	sk=0
	for i in `find -type f -printf %s`
	do 
		sk=$(( sk + i))
	done
	nl[$yt]=$(echo $j)
	sl[$yt]=$(echo $sk)
	yt=$(( yt + 1))
	cd ..
done
for(( l=0;l< $yt;l++))
do
	for((m=$l; m<$yt;m++))
	do
		if (( ${sl[$l]} > ${sl[$m]} ))
		then
			t1=${sl[$l]}
			sl[$l]=${sl[$m]}
			sl[$m]=$t1

			t2=${nl[$l]}
			nl[$l]=${nl[$m]}
			nl[$m]=$t2
		fi
	done
done
		
k=$(( yt - 1))
for ((b=$k;b>=0;b--))
do
	echo "${nl[$b]}      ${sl[$b]}B"
done
sk=0
for h in `find -maxdepth 1 -mindepth 1 -type d`
do
	cd $h
	a=`find -type f | wc -l`
	n2[$sk]=$(echo $h)
	fl[$sk]=$(echo $a)
	sk=$(( sk + 1))
	cd ..
done
for((g=0;g <$sk;g++))
do
	for((j=$g;j<$sk;j++))
	do
		if [ ${fl[$g]} -gt ${fl[$j]} ]
		then 
			t1=${fl[$g]}
			fl[$g]=${fl[$j]}
			fl[$j]=$t1
						
			t2=${n2[$g]}
			n2[$g]=${n2[$j]}
			n2[$j]=$t2
		fi
	done
done
q=$(($sk - 1))
for (( f=$q;f>=0;f--))
do
	echo "${n2[$f]} 	${fl[$f]} files"
done

