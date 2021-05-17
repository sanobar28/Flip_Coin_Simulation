#! /bin/bash

heads=0
tails=0

for (( count=0; count<50; count++ ))
do
	flip=$(( RANDOM%2 ))
	if [ $flip -eq 1 ]
	then
		heads=$(( $heads+1 ))
	else
		tails=$(( $tails+1 ))
	fi
done

echo "Heads wins $heads number of times"
echo "Tails wins $tails number of times"
