#!/bin/bash

case "$1" in
        1)
            source ethernet_bridge/ethernet_bridge.sh
            ;;
         
        2)
            ethernet_switch/ethernet_switch.sh
            ;;
         
        3)
            wifi-routing/wifi-routing.sh
            ;;
        *)
            echo $"Usage: $0 <mode>"
            echo "modes:"
            echo "1: ethernet_bridge"
            echo "2: ethernet_switch"
            echo "3: wifi-routing"
            exit 1
 
esac
