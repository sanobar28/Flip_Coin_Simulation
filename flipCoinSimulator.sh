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


	if [ $heads -eq 21 ] || [ $tails -eq 21 ]
	then
		break
	fi
done

echo "Total heads- " $heads
echo "Total tails- " $tails


if [ $heads -gt $tails ]
then
	headwins=$(( $heads-$tails ))
	echo "Heads won by $headwins"
elif [ $tails -gt $heads ]
then
	tailwins=$(( $tails-$heads ))
	echo "Tails won by $tailwins"
elif [ $heads -eq $tails ]
then
	echo "Its a tie"
fi



