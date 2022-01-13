#!/bin/bash

sudo ~/masscan/bin/masscan -p1-65535,U:1-65535 $(dig +short $1) --rate=1000 -e en0 > port-$1 
sudo nmap -Pn -f -sV $1 > port-service-$1
sudo nmap -sT -A -O -v -Pn $1 > port-os-$1
