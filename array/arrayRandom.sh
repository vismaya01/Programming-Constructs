#!/bin/bash -x
#declaration of array
declare -a random
for (( varY=0 ; varY < 10 ; varY++ ))
do
        random[((varY))]=$((RANDOM%900+100))
done
largest=0
smallest=1000
for (( varY=0 ; varY < 10 ; varY++ ))
do
        if [ ${random[varY]} -lt $smallest ]
        then
                secondSmallest=$smallest
                smallest=${random[varY]}
        fi
        if [ ${random[varY]} -gt $largest ]
        then
                secondLargest=$largest
                largest=${random[varY]}
        fi
done
for (( varY=0 ; varY < 10 ; varY++ ))
do
        if [[ ${random[varY]} -gt $secondLargest && ${random[varY]} -ne $largest ]]
        then
                secondLargest= ${random[varY]}
        elif [[ ${random[varY]} -lt $secondSmallest && ${random[varY]} -ne $smallest ]]
        then
                secondSmallest=${random[varY]}
        fi
done
echo ${random[@]}
echo "second smallest value on the array - "$secondSmallest
echo "second largest value on the array - "$secondLargest
