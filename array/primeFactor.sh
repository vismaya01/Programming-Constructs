#!/bin/bash -x
declare -a primeFactor
read -p "enter the integer - " input
element=0
if [ $input -lt 1 ]
then
        echo "not allowed!"
        exit 1
fi
count=0
flag=0
for ((i=2;i<input;i++))
do
        if [ $((input % i)) -eq 0 ]
        then
                factor=$i
                for ((j=2;j<=factor/2;j++))
                do
                        flag=0
                        if [ $((factor % j)) -eq 0 ]
                        then
                                flag=1
                                break
                        fi
                done
                if [ $flag -eq 0 ]
                then
                        primeFactor[((element++))]=$factor
                        count=1
                fi
        fi
done
if [ $count -eq 0 ];then
        echo "no prime factors found except 1 and $input"
fi
echo "array of prime factor of number $input -- " ${primeFactor[@]}
