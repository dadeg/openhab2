#!/bin/bash
# reads a 1 wire device by id like 28-0000065caeff
wert=`cat /sys/bus/w1/devices/$1/w1_slave | tail -n1 | cut -d '=' -f2`   
wert2=`echo "scale=3; $wert/1000 * 9.0 / 5.0 + 32.0" | bc`
echo $wert2