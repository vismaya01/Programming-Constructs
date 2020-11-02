#!/bin/bash -x
stake=100
goal=200
bets=0
wins=0
while [ 1 ]
do
        cash=$stake
        star=0
        while [[ $cash -gt 0 && $cash -lt $goal ]]
        do
                ((bets++))
                if [ $((RANDOM%2)) -eq 1 ]
                then
                        ((cash++))
                        ((wins++))
                else
                        ((cash--))
                fi
        done
        if [ $cash -eq 0 ]
        then
                echo "No more money to gamble"
                break;
        elif [ $cash -eq $goal ]
        then
                echo "Reached the goal of Rs 200"
                break;
        fi
done
echo "number of times won $wins"
echo "number of times bets made $bets"

