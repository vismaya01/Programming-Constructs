#!/bin/bash -x
read -p " Enter Date:-" date
read -p " Enter Month:-" month
dateLimit=0
combo=0
if [[ $month -ge 3 && $month -le 6 ]]
then
        #date limit in between 1 to 30 or 31 according to month
        dateLimit=$((30 + (month % 2)))
        if [[ $date -ge 1 && $date -le $dateLimit ]]
        then
                combo=$(((month * 100) + date))
                # true Mar 20 to Jun 20
                if [[ $combo -ge 320 && $combo -le 620 ]]
                then
                        echo "$date $month is true"
                else
                        echo "$date $month is false"
                fi
        else
                echo "$date $month is false"
        fi
else
        echo "$date $month is false"
fi
