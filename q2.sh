#! /bin/bash

RANDOM=$$
l=$(( $(( $RANDOM%15 ))+6 ))

a1=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
a2=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
a3=(1 2 3 4 5 6 7 8 9 0)
a4=(! @ $ % ^ - + ?)

#a_1=$(( $(( $RANDOM%26 ))+0 ))
#a_2=$(( $(( $RANDOM%26 ))+0 ))
#a_3=$(( $(( $RANDOM%10 ))+0 ))
#a_4=$(( $(( $RANDOM%8 ))+0 ))

d=2
a=2
str=""
while [ $d -ne 0 ]
do
	p=$(( $(( $RANDOM%2 ))+0 ))
	if(( $p != $a ))
	then
		if(( $p == 0 ))
		then
			a_1=$(( $(( $RANDOM%26 ))+0 ))
			str+=${a1[$a_1]}
			a=$p
			d=$(( d-1 ))
		elif(( $p ==1 ))
		then
			a_2=$(( $(( $RANDOM%26 ))+0 ))
			str+=${a2[$a_2]}
			a=$p
			d=$(( d-1 ))
		fi
	fi
done
l=$(( l-4 ))

a=4
while [ $l -ne 0 ]
do 
	p=$(( $(( $RANDOM%4 ))+0 ))
	if(( $a == 0 && $p == 2 ))
	then
		continue
	elif(( $a == 2 && $p == 0 ))
	then
		continue
	elif(( $a == 2 && $p == 2 ))
	then
		continue
	elif(( $a == 0 && $p == 0 ))
	then
		continue
	else
		if(( $p == 0 ))
		then
			a_1=$(( $(( $RANDOM%26 ))+0 ))
			str+=${a1[$a_1]}
			a=$p
			l=$(( l-1 ))
		elif(( $p == 1 ))
		then
			a_2=$(( $(( $RANDOM%26 ))+0 ))
			str+=${a2[$a_2]}
			a=$p
			l=$(( l-1 ))
		elif(( $p == 2 ))
		then
			a_3=$(( $(( $RANDOM%10 ))+0 ))
			str+=${a3[$a_3]}
			a=$p
			l=$(( l-1 ))
		else
			a_4=$(( $(( $RANDOM%8 ))+0 ))
			str+=${a4[$a_4]}
			a=$p
			l=$(( l-1 ))
		fi
	fi
done

d=2
a=2
while [ $d -ne 0 ]
do
	p=$(( $(( $RANDOM%2 ))+0 ))
	if(( $p != $a ))
	then
		if(( $p == 0 ))
		then
			a_3=$(( $(( $RANDOM%10 ))+0 ))
			str+=${a3[$a_3]}
			a=$p
			d=$(( d-1 ))
		elif(( $p ==1 ))
		then
			a_4=$(( $(( $RANDOM%8 ))+0 ))
			str+=${a4[$a_4]}
			a=$p
			d=$(( d-1 ))
		fi
	fi
done

echo $str
