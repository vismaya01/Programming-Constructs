#!/bin/bash -x
read -p "enter the number - " a
read -p "enter the number - " b
read -p "enter the number - " c
calc1=$((a+b*c))
calc2=$((a%b+c))
calc3=$((c+a/b))
calc4=$((a*b+c))
if (( $calc1 > $calc2 && $calc1 >$calc3 && $calc1>$calc4 ))
then
        echo "$calc1 is the greatest number"
elif (( $calc2 > $calc1 && $calc2 >$calc3 && $calc2>$calc4 ))
then
         echo "$calc1 is the greatest number"
elif(( $calc3 > $calc1 && $calc3 >$calc2 && $calc3>$calc4 ))
then
         echo "$calc3 is the greatest number"
elif (( $calc4 > $calc1 && $calc4 >$calc2 && $calc4>$calc3 ))
then
         echo "$calc4 is the greatest number"
fi
if (( $calc1 < $calc2 && $calc1<$calc3 && $calc1<$calc4 ))
then
         echo "$calc1 is the smallest number"
elif (( $calc2 < $calc1 && $calc2<$calc3 && $calc2<$calc4 ))
then
         echo "$calc2 is the smallest number"
elif ((  $calc3 < $calc1 && $calc3 < $calc2 && $calc3<$calc4 ))
then
         echo "$calc3 is the smallest number"
elif (( $calc4 < $calc1 && $calc4<$calc2 && $calc4<$calc3 ))
then
         echo "$calc4 is the smallest number"
fi
