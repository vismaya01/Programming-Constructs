#!/bin/bash
getPrime(){
        y=$1
        for((i=2; i<=y/2; i++))
        do
                if [ $((y%i)) -eq 0 ]
                then
                        echo "$y is not a prime number."
                        exit
                fi
        done
        echo "$y is a prime number."
}
getPalindrome(){
        c=0
        n=$1
        while [ $n -gt 0 ]
        do
                a=$((n%10))
                n=$((n/10))
                c=$(($((c*10))+a))
        done
        echo $c
}
read -p "Enter the number - " num
prime=$(getPrime $num)
palindrome=$(getPalindrome $num)
prime1=$(getPrime $palindrome)
echo $prime
echo "$palindrome palindrome of $num"
echo $prime1
