#!/bin/bash

filename=$1
output=$2
touch $2.txt

while IFS= read line; do
	ip=$line
	# port=443
	echo "=======================================================================================" >> $2.txt
	# echo "" >> $2.txt
	# echo $ip:$port >> $2.txt
	echo "" >> $2.txt
	nmap -p80 --script http-default-accounts $ip >> $2.txt
	echo "" >> $2.txt
done <$filename 
