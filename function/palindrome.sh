#!/bin/bash -x
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
number=$num
reverse=$(getPalindrome $num)
if [ $number -eq $reverse ]
then
        echo "Number is palindrome"
else
        echo "Number is not palindrome"
fi
