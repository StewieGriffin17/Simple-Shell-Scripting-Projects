#!/bin/bash

# This script will take information from an user and save it into a csv file.


read -p "[+]Enter your name: " NAME
read -p "[+]Enter your ID: " ID
read -p "[+]Enter your department: " DEPARTMENT
read -p "[+]Enter your gender: " GENDER

INFO=$NAME,$ID,$DEPARTMENT,$GENDER

read -p "Have you given the correct information [y/n]: " INPUT

case "$INPUT" in
	n | N )
	exit
	;;
	y | Y )
	echo $INFO >> data.csv
	;;
	* )
	exit
	;;
esac

echo "Your data has been saved successfully!"
