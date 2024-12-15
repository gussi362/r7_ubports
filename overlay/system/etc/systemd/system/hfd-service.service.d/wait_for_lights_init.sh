#!/bin/sh

for i in $(seq 1 30); do
    vbs_status=$(getprop init.svc.vendor.light-default)
    if [ "$vbs_status" = "running" ] ; then
        echo "lights service running"
        sleep 1
        exit 0
    fi
    echo "Waiting for lights service"
    sleep 1
done
exit 0
