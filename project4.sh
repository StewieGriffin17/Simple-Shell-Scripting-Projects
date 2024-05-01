#!/bin/bash

#Will check if you are root user or not.

if [ $UID -eq 0 ]
then
	echo "You are root"
else
	echo "You are not root"
fi

