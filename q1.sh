#! /bin/bash

#echo $1
a=();
for((i=0 ; i<=$1 ; i++))
do 
	a[$i]=0
done
b=$(bc <<< "scale=0; sqrt($1)")
for((k=2 ; k<=$b ; k++))
do
	if [ ${a[$k]} == 0 ]
	then
		
		for((g=$(( k*k )) ; g<=$1 ; g=$(( g+k ))))
		do
			a[$g]=1
		done
		
	fi
	
done

declare -A na
m=0
for((u=2 ; u<=$1 ; u++))
do
	if [ ${a[$u]} == 0 ]
	then
	
		na[$m]=$u
		m=$(( m+1 ))
		 
	fi
done
vb=${#na[@]}
vb=$(( vb-1 ))
twin=()
lk=0
for((j=0 ; j<$vb ; j++))
do
	vf=$(( j+1 ))
	kli=$(( ${na[$vf]}-${na[$j]} ))
	if [ $kli == 2 ]
	then
	
		#echo   ${na[$j]} ${na[$vf]}  
		abc=$(( ${na[$vf]}*${na[$j]} ))	
		twin[$lk]=$abc
		lk=$(( lk+1 ))
		
	fi
done
vc=${#twin[@]}
gvh=()
klml=0
for((j=0 ; j<$vc ; j++))
do
	jlk=0
	for((sum=${twin[$j]} ; sum>0 ; sum=(( sum/10 ))))
	do
		a=$(( sum%10 ))
		jlk=$(( jlk+a ))
	done
	gvh[$klml]=$jlk
	klml=$(( klml+1 ))
done
sim=0
for((j=0 ; j<$vc ; j++))
do
	koj=0
	while [ $(( gvh[$j]/10 )) != 0 ]
	do
		sim=$(( gvh[$j]%10 ))
		gvh[$j]=$(( gvh[$j]/10 ))
		koj=$(( koj+sim ))
	done
	koj=$(( koj+gvh[$j] ))
	gvh[$j]=$koj
done
gum=0
for((j=0 ; j<$vc ; j++))
do
	sum=$(( sum+gvh[$j] ))
done
echo $sum	
