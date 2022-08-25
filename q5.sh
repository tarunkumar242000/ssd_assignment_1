#! /bin/bash

#echo $1
n=$1
n=$(( n-1 ))
ab=2
bc=1
if [ $1 == 0 ]
then
	echo '2'
	exit;
elif [ $1 == 1 ]
then
	echo '1'
	exit;
else
	while (( $n > 0 ))
	do
		asdf=$(expr $ab + $bc)
		ab=$bc
		bc=$asdf
		n=$(expr $n - 1)
	done
	echo $asdf
fi
