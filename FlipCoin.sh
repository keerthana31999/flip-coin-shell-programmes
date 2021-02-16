#!/bin/bash -x
countHeadWin=0
countTailsWin=0
for (( i=1; i<=100; i++ ))
do
	if (( ($countHeadWin<21)&&($countTailsWin<21) ))
	then
	flip=$((RANDOM%2))

	if (( $flip==1 ))
	then
		eecho "head win"
		((countHeadWin++))
	else
		echo "tails"
		((countTailsWin++))
	fi
	fi
done
if (($countHeadWin==21))
then
	echo "head win first by= $countHeadWin :: $countTailsWin"
else 
	echo "tails win first by= $countTailsWin :: $countHeadWin"
fi
