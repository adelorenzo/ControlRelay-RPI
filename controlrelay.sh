#!/bin/bash
# Checks for presence of device and controls a relay module attached via GPIO

while true
do

    #ping -c 1 -W 5 192.168.1.150 > $HOME/.devicelist -> this is experimental and requires that you set a fixed ip address for your mobile phone
    l2ping -c 1 -t 20 60:E3:AC:14:DB:EB > $HOME/.devicelist
    status=$(grep -i -c '1 received' $HOME/.devicelist)
    prevStatus=$(cat $HOME/.ishome)

    if [ $status = $prevStatus ]; then
        echo "No change" 
    else
        if [ $status = "1" ]; then
            echo "Phone detected"
	    gpio write 1 1
        else
            echo "Phone lost"
	    gpio write 1 0
        fi
    fi

    echo $status > $HOME/.ishome
sleep 25
done
