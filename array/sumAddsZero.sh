#!/bin/bash

declare -a arraySum
read -p "enter the number of elements in array  - " num
for (( varY=0 ; varY < num ; varY++ ))
do
        read -p "Elements in array - " element
        arraySum[((varY))]=$element
done
sum=0
for (( i=0 ; i < num-2 ; i++ ))
do
        for (( j=i+1 ; j < num-1 ; j++ ))
        do
                for (( k=j+1 ; k < num ; k++ ))
                do
                        if [ $((${arraySum[i]}+${arraySum[j]}+${arraySum[k]})) -eq 0 ]
                        then
                                echo "sum of these number is zero "
                                echo  ${arraySum[i]} ${arraySum[j]} ${arraySum[k]}
                        fi
                done
        done
done
