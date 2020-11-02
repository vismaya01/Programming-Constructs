#!/bin/bash -x
read -p "Enter number - " number
if [ $number -eq 1 ]
then
        echo "unit"
elif [ $number -eq 10 ]
then
        echo "Ten"
elif [ $number -eq 100 ]
then
        echo "Hundred"
elif [ $number -eq 1000 ]
then
        echo "Thousand"
fi
