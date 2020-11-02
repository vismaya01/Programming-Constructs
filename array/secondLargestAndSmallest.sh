#!/bin/bash -x
#declaration of array
declare -a random
for (( varY=0 ; varY < 10 ; varY++ ))
do
        random[((varY))]=$((RANDOM%900+100))
done
#sorting the array
for ((varY=0; varY<10 ; varY++))
do
        for ((varX=$varY; varX<10; varX++))
        do
                if [ ${random[varY]} -gt ${random[varX]} ]
                then
                        temp=${random[varY]}
                        random[((varY))]=${random[varX]}
                        random[((varX))]=$temp
                fi
        done
done
secondLargest=${random[8]}
secondSmallest=${random[1]}
echo ${random[@]}
echo "second largest number in the array - "$secondLargest
echo "second smallest number in the array - " $secondSmallest
