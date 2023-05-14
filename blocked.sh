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
ipset -A blocked 185.11.61.0/24 # STARCRECIUM - Cyprus
ipset -A blocked 45.227.254.0/24  # AS267784 Flyservers S.A.
ipset -A blocked 54.39.100.0/23
ipset -A blocked 74.120.14.0/24  # CENSYS-ARIN-02
ipset -A blocked 75.119.128.0/19  # Contabo GmbH
ipset -A blocked 78.128.113.0/24  # Miti2000 BG
ipset -A blocked 84.38.184.0/23
ipset -A blocked 88.218.17.243
ipset -A blocked 89.248.165.0/24  # IP Volume
ipset -A blocked 89.248.168.0/24
ipset -A blocked 91.220.163.0/24  #  Zservers
ipset -A blocked 92.63.197.0/24
ipset -A blocked 94.102.51.0/24  # IP Volume
ipset -A blocked 141.98.10.0/24
ipset -A blocked 162.142.125.0/24  # CENSYS-ARIN-01
ipset -A blocked 167.94.138.0/24  # CENSYS
ipset -A blocked 167.94.145.0/24  # CENSYS
ipset -A blocked 167.94.146.0/24  # CENSYS
ipset -A blocked 167.248.133.0/24  # CENSYS-ARIN-03
ipset -A blocked 185.153.196.0/22  # RM Engineering
ipset -A blocked 185.193.91.0/24
ipset -A blocked 185.217.0.0/22  # AS42237 AMATI FOUNDATION
ipset -A blocked 192.35.168.0/23  # CENSYS MICH-15324
ipset -A blocked 193.27.228.0/23
ipset -A blocked 194.147.140.0/24  # NetworkingAnalysis

ipset -A blocked 87.236.176.0/24 # internet-measurement
ipset -A blocked 193.163.125.0/24
ipset -A blocked 68.183.53.77/32
ipset -A blocked 104.248.203.191/32
ipset -A blocked 104.248.204.195/32
ipset -A blocked 142.93.191.98/32
ipset -A blocked 157.245.216.203/32
ipset -A blocked 165.22.39.64/32
ipset -A blocked 167.99.209.184/32
ipset -A blocked 188.166.26.88/32
ipset -A blocked 206.189.7.178/32
ipset -A blocked 209.97.152.248/32

ipset -A blocked 147.78.47.0/24 # global-host AS209588
ipset -A blocked 124.220.0.0/14 # Tencent
ipset -A blocked 94.102.61.0/24 # Criminal IP
ipset -A blocked 209.141.32.0/19 # Ponynet
ipset -A blocked 123.160.0.0/14 # Maintnet China
ipset -A blocked 211.90.0.0/15 # China unicom
ipset -A blocked 211.92.0.0/14
ipset -A blocked 211.96.0.0/15

iptables -t raw -A PREROUTING -m set --match-set blocked src -j LOG
iptables -t raw -A PREROUTING -m set --match-set blocked src -j DROP

iptables -L -n -t raw |grep block
