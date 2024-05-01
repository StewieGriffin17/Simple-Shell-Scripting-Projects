#!/bin/bash

# Server utilization

RED="\e[1;31m"
GREEN="\e[1;32m"
EXIT="\e[0m"

devider () {
	echo
	echo -e "${RED}=======================================${EXIT}"
	echo
}

clear

echo -e "				${GREEN}********************************${EXIT}"
echo -e "				${GREEN}  **** SERVER UTILIZATION ****${EXIT}"
echo -e "                               ${GREEN}********************************${EXIT}"
devider
echo -e "Today's date is : `date`"
devider
echo "Uptime: `uptime`"
devider
echo "Currently logged-on user's - "
w
devider
echo "Last logins - "
last -a | head -n 3
devider
echo "Disk and Memory usage - "
echo
df -h | xargs | awk '{print "Free/Total disk:" $11 "/" $9 }'
free -m | xargs | awk '{print "Free/Total memory: " $17 "/" $8" MB"}'
devider
echo "Utilization and most expensive processes - "
echo
top -b | head -n 3
echo
top -b | head -n 10 | tail -n 4
devider

