#!/bin/sh

for i in $(seq 1 30); do
    vbs_status=$(getprop init.svc.vendor.usb-hal-1-1)
    if [ "$vbs_status" = "running" ] ; then
        echo "usb service running"
        sleep 1
        exit 0
    fi
    echo "Waiting for usb service"
    sleep 1
done
exit 0