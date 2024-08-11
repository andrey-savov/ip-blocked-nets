#!/bin/bash

iptables -t raw -D PREROUTING -m set --match-set blocked src -j LOG
iptables -t raw -D PREROUTING -m set --match-set blocked src -j DROP

ipset destroy blocked
ipset create blocked nethash




ipset -A blocked 101.36.118.0/24 # AS135377 - UCLOUD INFORMATION TECHNOLOGY (HK) LIMITED
ipset -A blocked 103.190.106.0/23 # AS140815 - NVK TECHNOLOGY AND SERVICES COMPANY LIMITED
ipset -A blocked 104.248.203.191/32
ipset -A blocked 104.248.204.195/32
ipset -A blocked 106.75.128.0/20 # Chinanet
ipset -A blocked 123.160.0.0/14 # Maintnet China
ipset -A blocked 124.220.0.0/14 # Tencent
ipset -A blocked 141.98.10.0/24
ipset -A blocked 142.93.191.98/32
ipset -A blocked 146.70.192.0/24 # AS9009 - M247 Europe SRL (Romania)
ipset -A blocked 147.78.47.0/24 # global-host AS209588
ipset -A blocked 152.32.210.0/24 # UCLOUD.CN 	AS135377
ipset -A blocked 152.89.198.0/24 # Starcrecium Limited
ipset -A blocked 157.245.216.203/32
ipset -A blocked 162.0.226.0/24 # 	AS22612 - Namecheap, Inc.
ipset -A blocked 162.142.125.0/24  # CENSYS-ARIN-01
ipset -A blocked 165.154.36.0/24 # AS135377 - UCLOUD INFORMATION TECHNOLOGY (HK) LIMITED
ipset -A blocked 165.22.39.64/32
ipset -A blocked 167.248.133.0/24  # CENSYS-ARIN-03
ipset -A blocked 167.94.138.0/24  # CENSYS
ipset -A blocked 167.94.145.0/24  # CENSYS
ipset -A blocked 167.94.146.0/24  # CENSYS
ipset -A blocked 167.99.209.184/32
ipset -A blocked 168.121.26.0/23 # AS265294 - ACE COMERCIO E SERVICOS DE INFORMATICA LTDA - ME
ipset -A blocked 176.111.174.0/24 # AS57523 - Chang Way Technologies Co. Limited
ipset -A blocked 179.60.149.0/24 # AS395839 - HOSTKEY Safe VPN S.A.
ipset -A blocked 183.136.225.0/24 # AS58461 - CT-HangZhou-IDC
ipset -A blocked 185.11.61.0/24 # Starcrecium Limited
ipset -A blocked 185.122.204.0/24 # Starcrecium Limited
ipset -A blocked 185.153.196.0/22  # RM Engineering
ipset -A blocked 185.166.84.0/24 # AS203020 - HostRoyale Technologies Pvt Ltd
ipset -A blocked 185.193.91.0/24
ipset -A blocked 185.217.0.0/22  # AS42237 AMATI FOUNDATION
ipset -A blocked 185.233.19.0/24 # AS150706 - Hong Kong Zhengxing Technology Co., Ltd.
ipset -A blocked 185.234.216.0/24 # Chang Way Technologies Co. Limited
ipset -A blocked 185.81.68.0/24 # Starcrecium Limited
ipset -A blocked 188.166.26.88/32
ipset -A blocked 192.35.168.0/23  # CENSYS MICH-15324
ipset -A blocked 193.163.125.0/24
ipset -A blocked 193.233.21.0/24 # AS56380 - ''IT FRUIT'' S.R.L.
ipset -A blocked 193.27.228.0/23
ipset -A blocked 194.147.140.0/24  # NetworkingAnalysis
ipset -A blocked 194.26.135.0/24 # AS57523 - Chang Way Technologies Co. Limited
ipset -A blocked 195.211.96.0/23 # AS204957 - GREEN FLOID LLC
ipset -A blocked 206.189.7.178/32
ipset -A blocked 209.141.32.0/19 # Ponynet
ipset -A blocked 209.97.152.248/32
ipset -A blocked 211.90.0.0/15 # China unicom
ipset -A blocked 211.92.0.0/14
ipset -A blocked 211.95.50.0/24 # AS17621 - China Unicom Shanghai network
ipset -A blocked 211.96.0.0/15
ipset -A blocked 213.226.123.0/24 # AS49943 - IT Resheniya LLC
ipset -A blocked 23.148.145.0/24 # Quick Server Hosting LLC
ipset -A blocked 31.131.249.0/24  # Selectel - Russia
ipset -A blocked 42.240.128.0/20 # AS136958 - China Unicom Guangdong IP network
ipset -A blocked 43.129.32.0/20 # AS132203 - Tencent Building, Kejizhongyi Avenue
ipset -A blocked 43.131.0.0/18 # AS132203 - Tencent Building, Kejizhongyi Avenue
ipset -A blocked 45.129.32.0/22  # IP Volume
ipset -A blocked 45.134.26.0/24 # AS198953 - Proton66 OOO
ipset -A blocked 45.135.232.0/24  # CY-STARCRECIUM - Russia
ipset -A blocked 45.143.200.50 # Bulgaria
ipset -A blocked 45.146.164.0/23  # STARCRECIUM - Russia
ipset -A blocked 45.146.166.0/23  # STARCRECIUM - Russia
ipset -A blocked 45.155.205.0/24  # STARCRECIUM - Germany
ipset -A blocked 45.227.254.0/24  # AS267784 Flyservers S.A.
ipset -A blocked 45.93.20.0/24 # Starcrecium Limited
ipset -A blocked 5.188.206.0/24
ipset -A blocked 54.39.100.0/23
ipset -A blocked 62.122.184.0/24 # Chang Way Technologies Co. Limited
ipset -A blocked 62.233.50.0/24 # SIERRA LLC
ipset -A blocked 68.183.53.77/32
ipset -A blocked 74.120.14.0/24  # CENSYS-ARIN-02
ipset -A blocked 75.119.128.0/19  # Contabo GmbH
ipset -A blocked 77.90.185.0/24 # AS198465 - BtHoster LTD
ipset -A blocked 78.128.113.0/24  # Miti2000 BG
ipset -A blocked 84.38.184.0/23
ipset -A blocked 87.236.176.0/24 # internet-measurement
ipset -A blocked 88.218.17.243
ipset -A blocked 89.248.163.0/24 # AS202425 - IP Volume inc
ipset -A blocked 89.248.165.0/24  # IP Volume
ipset -A blocked 89.248.168.0/24
ipset -A blocked 91.148.190.154 # Bulgaria
ipset -A blocked 91.220.163.0/24  #  Zservers
ipset -A blocked 91.240.118.0/24 # Chang Way Technologies Co. Limited
ipset -A blocked 92.63.197.0/24
ipset -A blocked 94.102.51.0/24  # IP Volume
ipset -A blocked 94.102.61.0/24 # AS202425 - IP Volume inc security.criminalip.com
ipset -A blocked 199.45.154.0/24 # Censys
ipset -A blocked 199.45.155.0/24 # Censys
ipset -A blocked 206.168.34.0/24 # Censys

iptables -t raw -A PREROUTING -m set --match-set blocked src -j LOG
iptables -t raw -A PREROUTING -m set --match-set blocked src -j DROP

iptables -L -n -t raw |grep block
