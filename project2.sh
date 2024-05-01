#!/bin/bash

#simple password generator

echo 'How many characters do you want?'
read input

pass=`date | sha256sum | cut -b 1-$input`

echo $pass
