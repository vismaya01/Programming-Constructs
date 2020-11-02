#!/bin/bash 
read -p "enter the lower bound of interval - " a
read -p "enter the upper bound of interval - " b
for((i=a; i<=b; i++))
do
        if [[ $i -eq 1 || $i -eq 0 ]]
        then
                continue
        fi
        flag=1
        for (( j=2; j<=i/2; ++j ))
        do
                if [ $((i%j)) -eq 0 ]
                then
                        flag=0;
                        break;
                fi
        done
        if [ $flag -eq 1 ]
        then
                echo $i
        fi
done
