#!/bin/bash

#Converts any image type file into a png file.

if [ $# -eq 0 ]
then
	echo "Usage: $0 [File-1] [File-2] .... [File-n]"
fi

for i in $@
do
	if [ -f $i ]
	then
		file_name=`echo $i | sed "s/[.].*//"`
		convert $i $file_name.png
		echo "[+] File conversion completed..."
	else
		echo "Error: $i is not a regular file."
	fi
done
