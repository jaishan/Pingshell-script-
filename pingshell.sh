#!/bin/bash

subnet="192.168.110"
for i in {1..254}; do
    ip="$subnet.$i"
    if ping -c 1 -W 1 "$ip" >/dev/null 2>&1; then
        echo "IP $ip is active and up."
    fi
done
