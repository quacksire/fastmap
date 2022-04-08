echo "PREREQUISITES: figlet, curl, jq, lolcat"
echo "PLEASE INSTALL THESE BINARIES WITH YOUR PACKAGE MANAGER"
echo "NOTE: USE LOWER CASE FOR ALL INPUTS"

read -p "Press [ENTER] to start program"

echo ""

figlet -f slant "Netowork API\
Calling Tool" | lolcat

read -p "API to send curl request to (with key in the url): " api_url
echo $api_url > api_url.txt

read -p "Display api raw data? (y/n): " rawdata_ask
if [ $rawdata_ask == "n" ] 
then
	echo "Not displaying raw data"
else
	curl -s $api_url | jq "."
fi

read -p "Enter ARRAY HEADING to query: " array_header_0x1





