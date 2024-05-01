#!/bin/bash

#Will generate a random qoute every time of execution.

arr=(
"Wubba Lubba Dub Dub"
"Existance is pain"
"because it's your choice to be a loser"
"I am dead inside"
"I declare...... Bankcrrupcy"
"Damn you, vile woman!"
)
echo -e "\e[31m${arr[$RANDOM%6]}\e[0m"

