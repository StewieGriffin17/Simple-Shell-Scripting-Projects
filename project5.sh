#!/bin/bash

#package installer

if [ $UID -ne 0 ]
then
	echo "Error: Run as root..."
	exit 1
fi

echo "Whick package you want to install?"
read $package

apt install $package -y 
echo "Install compleate"

