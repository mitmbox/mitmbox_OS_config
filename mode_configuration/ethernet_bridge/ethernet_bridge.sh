#!/bin/bash

# network ports
/root/new/mitmbox_config/mode_configuration/ethernet_bridge/swconfig-bridge

# processes
killall hostapd
killall wpa_supplicant
killall dnsmasq
killall dhclient

# ip fordwarding
sysctl -w net.ipv4.ip_forward=0

# routing
route del -net 0.0.0.0 tun0
route add net 10.0.0.0 netmask 255.255.255.0 eth0

