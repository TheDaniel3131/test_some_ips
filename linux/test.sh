#!/bin/bash

# test the IP Addresses
IPs=("google.com" "gmail.com" "drive.google.com" "youtube.com" "speedtest.net" "fast.com" "bing.com" "chess.com" "cssbattle.dev" "github.com" "zephrous2k.github.io")

# We are testing more than 1, so need a loop statement
for IP in "${IPs[@]}"
do
    # Ping each IP address
    ping -c 5 $IP > /dev/null 2>&1

    # Check and display the ping of each IP address is a success or fail
    if [ $? -eq 0 ]
    then
        echo "Ping to $IP was successful."
    else
        echo "Ping to $IP failed."
    fi
done
