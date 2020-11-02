#!/bin/bash -x
read -p "Enter number - " number
case $number in
	1) echo "Unit" ;;
	10) echo "Ten" ;;
	100) echo "Hundred" ;;
	10000) echo "Thousand" ;;
esac
