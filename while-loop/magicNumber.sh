#!/bin/bash -x
lower=1
upper=100
mid=0
read -p "enter the number - " value
while [ $lower -le $upper ]
do
        mid=$(((( $lower+$upper ))/2 ))
        echo $mid
        if [ $value -eq $mid ]
        then
                echo "The number is $mid"
                break
        elif [ $value -lt $mid ]
        then
                upper=$(($mid-1))
        else
                lower=$(($mid+1))
        fi
done
