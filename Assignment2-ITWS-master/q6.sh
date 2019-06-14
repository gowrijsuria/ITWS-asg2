#!/bin/bash
echo "enter monthly salary"
read msal

asal=$(echo 12 $msal | awk '{printf "%0.4f\n",$1*$2}')
tax=$(echo 0.3 $asal | awk '{printf "%0.4f\n",$1*$2}')

i=300000
if [ 1 -eq "$(echo "${asal} > ${i}" | bc)" ]
	then 
		printf "TAX PAYMENT REQUIRED $tax "
	else
		echo "NO TAX PAYMENT REQUIRED"
fi
			
