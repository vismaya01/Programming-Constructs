#!/bin/bash -x  
max=0
min=0
for ((varY=0; varY<5 ; varY++ ))
do
        number=$((RANDOM%900+100))
        echo $number
        if [[ $max -lt $number || $max -eq 0 ]]
        then
                max=$number
        fi
        if [[ $min -gt $number || $min -eq 0 ]]
        then
                min=$number
        fi
done
echo "Maximum number is - " $max
echo "minimum number is - " $min
