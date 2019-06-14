 #!/bin/bash		 	
  bk=( "$@" )

  len=$#
p=$((len - 1))	

for (( i=0 ; i < $p ; i++ ))
	do
	     for (( j=0 ; j < $p -$i ; j++ ))
              do
                  if [ ${bk[$j]} -gt ${bk[$j+1]} ]
                           then
					  t=${bk[$j]}
                                          bk[$j]=${bk[$j+1]}
					  bk[$j+1]=$t
                           fi
					  
                  done
           done
	
                 
                          echo ${bk[*]} 
                 
  
  
  

