echo "PREREQUISITES: figlet, curl, jq, lolcat"
echo "PLEASE INSTALL THESE BINARIES WITH YOUR PACKAGE MANAGER"
echo "NOTE: USE LOWER CASE FOR ALL INPUTS"

read -p "Press [ENTER] to start program"

echo ""

figlet -f slant "Netowrk API\
 Calling Tool" | lolcat

read -p "API url with auth key: " api_url1
echo "ENTERED API URL: $api_url1"

read -p "Display api raw data? (y/n): " rawdata_ask
if [ $rawdata_ask == "n" ]
then
	echo "Not displaying raw data"
else
	curl -s $api_url1 | jq "."
fi

read -p "Value of i: " increment
echo ""
echo "NOW THE PROGRAM WILL LOOP. PRESS CNTL+C TO QUIT"
echo ""

while [ $increment -lt 100 ]
do

	read -p "Enter array values to query (with dot notation for jq[except for the first delimiter]): " array_header_0x1
	curl -s $api_url1 | jq ".$array_header_0x1"

	let "increment=increment+1"

done





