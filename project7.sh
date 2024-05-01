#!/bin/bash

#printing out the details of a file in a way so anyone can understand the details.

if [ $# -eq 0 ]
then
	 echo "Usage: $0 [File]"
	 exit
fi

OWNER=`ls -la $1 | awk '{print $3}'`
SIZE=`ls -la $1 | awk '{print $5}'`
MONTH=`ls -la $1 | awk '{print $6 " " $7}'`
TIME=`ls -la $1 | awk '{print $8}'`

echo "File name: $1"
echo
echo "Owner: $OWNER"
echo "Size: $SIZE bytes"
echo "This file was created on $MONTH at $TIME"
echo "File Type: `file $1`"
echo
echo "Permissions-"

if [ -r $1 ]
then
	echo "READABLE=TRUE"
else
	echo "READABLE=FALSE"
fi

if [ -w $1 ]
then
	echo "WRITEABLE=TRUE"
else
	echo "WRITEABLE=FALSE"
fi

if [ -x $1 ]
then
	echo "EXECUTABLE=TRUE"
else
	echo "EXECUTABLE=FALSE"
fi


