#!/bin/sh

variable="eth0"
sudo tcpdump -w packets.pcap -i $variable
sudo tcpdump -r packets.pcap