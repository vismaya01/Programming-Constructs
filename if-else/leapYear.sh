#!/bin/bash -x

read -p "year - " year

digit=`awk -F '[0-9]' '{print NF-1}' <<< "$year"`

if [ $digit -eq 4 ]
then
        if(( $year % 4 == 0 ))
        then
                if(( $year % 400 == 0 ))
                then
                        echo "This is a leap year"
                else
                        if(( $year % 100 == 0 ))
                        then
                                echo "This is not a leap year"
                        else
                                echo "This is a leap year"
                        fi
                fi
        else
                echo "This is not a leap year"
        fi
fi
