#! /bin/bash

echo $1
k=$1
asc=()
desc=()


i=0
dif=0
while [ $dif -ne 6174 ]
do
	while [ $k -ne 0 ]
	do 
		arr[$i]=$(( $k%10 ))
		k=$(( k/10 ))
		i=$(( i+1 ))
	done
	i=0
	asc=($(echo "${arr[@]}" | sed 's/ /\n/g' | sort))
	desc=($(echo "${asc[@]}" | rev))

	num1=$(( $(( ${asc[0]}*1000 ))+$(( ${asc[1]}*100 ))+$(( ${asc[2]}*10 ))+${asc[3]} ))
	num2=$(( $(( ${desc[0]}*1000 ))+$(( ${desc[1]}*100 ))+$(( ${desc[2]}*10 ))+${desc[3]} ))
	dif=$(( num2-num1 ))
	k=$dif
	echo $dif
done

