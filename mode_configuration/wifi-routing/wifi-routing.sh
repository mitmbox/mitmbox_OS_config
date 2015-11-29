#!/bin/bash

# ports
./swconfig

# processes
service dnsmasq start
wpa_supplicant -i wlan2 -D wext -c /etc/wpa_supplicant-dlink.conf > wpa_supplicant.log &
dhclient wlan2

# ip fordwarding
sysctl -w net.ipv4.ip_forward=1

# routing

# NAT
iptables -t nat -A POSTROUTING -o wlan2 -j MASQUERADE

# run hostapd as final process to get output
hostapd /etc/hostapd.conf


