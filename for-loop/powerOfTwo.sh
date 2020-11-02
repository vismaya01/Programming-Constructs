#!/bin/bash -x
power=1
read -p "enter the number " n
for(( varY=0; varY <= $n; varY++ ))
do
        if [ $varY -eq 0 ]
        then
                power=1
        else
                power=$((power*2))
        fi
        echo "$varY ---- $power"
done
