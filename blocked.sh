#!/bin/bash

iptables -t raw -D PREROUTING -m set --match-set blocked src -j LOG
iptables -t raw -D PREROUTING -m set --match-set blocked src -j DROP

ipset destroy blocked
ipset create blocked nethash

ipset -A blocked 5.188.206.0/24
ipset -A blocked 23.148.145.0/24 # Quick Server Hosting LLC
ipset -A blocked 31.131.249.0/24  # Selectel - Russia
ipset -A blocked 45.129.32.0/22  # IP Volume
ipset -A blocked 45.135.232.0/24  # CY-STARCRECIUM - Russia
ipset -A blocked 45.146.164.0/23  # STARCRECIUM - Russia
ipset -A blocked 45.146.166.0/23  # STARCRECIUM - Russia
ipset -A blocked 45.155.205.0/24  # STARCRECIUM - Germany
ipset -A blocked 54.39.100.0/23
ipset -A blocked 74.120.14.0/24  # CENSYS-ARIN-02
ipset -A blocked 75.119.128.0/19  # Contabo GmbH
ipset -A blocked 78.128.113.0/24  # Miti2000 BG
ipset -A blocked 84.38.184.0/23
ipset -A blocked 88.218.17.243
ipset -A blocked 89.248.168.0/24
ipset -A blocked 92.63.197.0/24
ipset -A blocked 94.102.51.0/24  # IP Volume
ipset -A blocked 141.98.10.0/24
ipset -A blocked 162.142.125.0/24  # CENSYS-ARIN-01
ipset -A blocked 167.248.133.0/24  # CENSYS-ARIN-03
ipset -A blocked 185.193.91.0/24
ipset -A blocked 192.35.168.0/23  # CENSYS MICH-15324
ipset -A blocked 193.27.228.0/23
ipset -A blocked 194.147.140.0/24  # NetworkingAnalysis

iptables -t raw -A PREROUTING -m set --match-set blocked src -j LOG
iptables -t raw -A PREROUTING -m set --match-set blocked src -j DROP

iptables -L -n -t raw |grep block
