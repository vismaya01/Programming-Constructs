#!/bin/bash -x
power=1
read -p "enter the number - " n
varY=0
if [ $n -gt 8 ]
then
        while [ $varY -le 8  ]
        do
                if [ $varY -eq 0 ]
                then
                        power=1
                else
                        power=$((power*2))
                fi
                echo "$varY ---- $power"
                ((varY++))
        done
else
        while [ $varY -le $n ]
        do
                if [ $varY -eq 0 ]
                then
                        power=1
                else
                        power=$((power*2))
                fi
                echo "$varY ---- $power"
                ((varY++))
        done
fi
