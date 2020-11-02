#!/bin/bash -x
getFahrenheit(){
        read -p "Enter temperature (C) : " tc
        if [[ $tc -ge 0 && $tc -le 100 ]]
        then
                tf=`awk 'BEGIN{printf("%0.2f", (('$tc' * 9/5)) +32 )}'`
                echo " $tc = $tf "
        else
                echo "Enter the temperature in between 0 to 100"
        fi
}
getCelsius(){
        read -p "Enter temperature (F) : " tf
        if [[ $tf -ge 32 && $tf -le 212 ]]
        then
                tc=`awk 'BEGIN{printf("%0.2f", (('$tf' - 32)) *5/9 )}'`
                echo "$tf = $tc"
        else
                echo "Enter the temperature in between 32 to 212"
        fi
}
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
read -p "Select your choice (1-2) : " choice
case $choice in
        1)getFahrenheit;;
        2)getCelsius;;
esac
