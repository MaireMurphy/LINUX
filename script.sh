#!/bin/bash
HISTFILE=~/.bash_history
#limit hisory to 100 lines
HISTSIZE=100
export HISTCONTROL=ignoredups:erasedups
set -o history	

echo "Date: " > MaireMurphy.txt
date >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo "Hostname: " >> MaireMurphy.txt
hostname >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo "Hardware Architecture:" >> MaireMurphy.txt 
arch >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo "System Information: " >> MaireMurphy.txt
uname -a >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo "System Uptime, Users & Load Average: " >> MaireMurphy.txt
uptime >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo "Username::: " >> MaireMurphy.txt
whoami >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo "Users currently logged in: " >> MaireMurphy.txt
who  >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo "What current users are doing: " >> MaireMurphy.txt
finger >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo "What users working on :" >> MaireMurphy.txt
w >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo "System Summary: " >> MaireMurphy.txt
top -b -n 1 >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo " " >> MaireMurphy.txt
echo "History: " >> MaireMurphy.txt
history >> MaireMurphy.txt
