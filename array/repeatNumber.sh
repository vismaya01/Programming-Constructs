#!/bin/bash -x
declare -a masterNumber
for (( varY=0; varY < 100; varY++ ))
do
        c=0
        n=$varY
        while [ $n -gt 0 ]
        do
                a=$((n%10))
                n=$((n/10))
                c=$(($((c*10))+a))
        done
        if [[ $varY -eq $c && $varY -gt 10 ]]
        then
                masterNumber[((count++))]=$varY
        fi
done
echo "array is - " ${masterNumber[@]}



