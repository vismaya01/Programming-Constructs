#!/bin/bash -x
sum=0
read -p "enter the number " n
for(( varY=1; varY <= $n; varY++ ))
do
        harmonic=`awk 'BEGIN{printf("%0.3f", 1 / '$varY' )}'`
        sum=`awk 'BEGIN{printf("%0.3f" , '$sum' + '$harmonic' )}'`
done
echo "Nth harmonic number - " $sum
