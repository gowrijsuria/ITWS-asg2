#!/bin/bash
a=$1
hund=$((a / 100))
k=$((a % 100))
ten=$(($k / 10))
one=$((a % 10))
case $hund in
	1)
	  var[0]=C;;
	2)
          var[0]=CC;;
	3)
          var[0]=CCC;;
esac
case $ten in
		   
	1)
	  var[1]=X;;
          2)
           var[1]=XX;;
          3)
            var[1]=XXX;;
          
          4)
            var[1]=XL;;
  
          5)
            var[1]=L;;
          6)
            var[1]=LX;;
          7)
            var[1]=LXX;;
  
          8)
            var[1]=LXXX;;
  
          9)
            var[1]=XC;;

esac

case $one in
	  1)
            var[2]=I;;
          2)
           var[2]=II;;
         3)
           var[2]=III;;
         4)
           var[2]=IV;;
  
          5)
           var[2]=V;;
          6)
            var[2]=VI;;
          7)
            var[2]=VII;;
  
          8)
            var[2]=VIII;;
  
          9)
            var[2]=IX;;
esac

printf %q ${var[*]}
	
