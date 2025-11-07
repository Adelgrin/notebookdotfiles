#!/bin/sh
#ip=$(ip route | awk '/default/ {print $9}')
interface=$(ip route | awk '/default/ {print $5}')
prefixo=$(ip route | awk -v iface="$interface" 'NR > 1 && $0 ~ iface {print $1}')
echo "rodando nmap ..."
nmap -sn "$prefixo" > tempscan
nmap -A -sV -sU -v $(awk '/Nmap scan report for/ {ip=$5} /MAC Address/ {print ip, "(" substr($0, index($0, "(")+1, length($0)-index($0, "(")-1) ")"}' tempscan | fzf | awk '{print $1}')
rm tempscan
#nmap -sn "$prefixo" | fzf |xargs nmap -A -sV -sU 
