#!/bin/bash -x
heads=0
tails=0
while [ 1 ]
do
        if [ $((RANDOM%2)) -eq 0 ]
        then
                ((heads++))
        else
                ((tails++))
        fi
        if [ $heads -eq 11 ]
        then
                echo "heads win"
                exit
        elif [ $tails -eq 11 ]
        then
                echo "tails win"
                exit
        fi
done
