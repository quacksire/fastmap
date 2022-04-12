#!/bin/bash

echo "PREREQUISITES: figlet, curl, jq, lolcat, nmap, sudo, ncurses-utils"
echo "PLEASE INSTALL THESE BINARIES WITH YOUR PACKAGE MANAGER"
echo "NOTE: USE LOWER CASE FOR ALL INPUTS"

read -p "Press [ENTER] to start program"

echo ""

figlet -f slant "FastMap" | lolcat

echo ""

read -p "Value of i: " increment
echo ""
echo "NOW THE PROGRAM WILL LOOP. PRESS CNTL+C TO QUIT"
echo ""

while [ $increment -lt 100 ]
do

	read -p ">>> " prompt_input
	if [[ $prompt_input == "exit" ]] ; then

		echo "Exiting program"
		break

	elif [[ $prompt_input == "netmap" ]] ; then

		echo "Starting nmap module"
		read -p "Enter host+/subnet to scan>>> " ipsub_scanvar_0x1
		read -p "What type of scan do you want to do? (syn/port/os/arp/lp(list open ports))>>> " scan_type_0x1

		if [[ $scan_type_0x1 == "port" ]] ; then

			read -p "Scan all ports(y/n)>>> " scanyesnotcp

			if [[ $scanyesnotcp == "y" ]] ; then
				nmap -p0- -A -T4 -vvv $ipsub_scanvar_0x1 
			else
				echo "scan cancelled"
			fi
		elif [[ $scan_type_0x1 == "lp" ]] ; then

			echo "Screen will remain blank for a bit"
			echo "================================================================"
			nmap -p0- -A -T4 -vvv $ipsub_scanvar_0x1 | grep "open port" > open_ports.txt
			cat open_ports.txt
			echo "================================================================"
			echo "Amount of open ports: "
			echo | wc -l open_ports.txt
			echo "================================================================"

		elif [[ $scan_type_0x1 == "arp" ]] ; then

			echo "Commencing arp scan of subnet"
			nmap -sn -vvv $ipsub_scanvar_0x1 

		elif [[ $scan_type_0x1 == "syn" ]] ; then

			echo "Commencing syn scan of subnet"
			sudo nmap -sS -vvv $ipsub_scanvar_0x1 

		elif [[ $scan_type_0x1 == "os" ]] ; then

			echo "Commencing os scan of subnet"
			sudo nmap -O -vvv $ipsub_scanvar_0x1 

		fi
	elif [[ $prompt_input == "fapi" ]] ; then
		read -p "API url with auth key: " api_url1
		echo "ENTERED API URL: $api_url1"

		read -p "Display api raw data? (y/n): " rawdata_ask
		if [[ $rawdata_ask == "n" ]] ; then
			echo "Not displaying raw data"
			read -p "Enter array values to query (with dot notation for jq[except for the first delimiter]): " array_header_0x1
			curl -s $api_url1 | jq ".$array_header_0x1"
		else
			curl -s $api_url1 | jq "."
		fi
	elif [[ $prompt_input == "ping" ]] ; then
		read -p "Enter host to ping>>> " ping_host_0x1
		read -p "How many seconds to ping>>> " ping_seconds_0x1
		sudo ping -c $ping_seconds_0x1 $ping_host_0x1
	elif [[ $prompt_input == "help" ]] ; then

		echo "========================================="
		echo "help: displays this help menu"
		echo "netmap: opens network mapping module" | lolcat
		echo "ping: opens ping module"
		echo "fapi: opens fing api calling module" | lolcat
		echo "exit: exits program"
		echo "========================================="

	fi

	let "increment=increment+1"

done

figlet -f slant "Goodbye!" | lolcat