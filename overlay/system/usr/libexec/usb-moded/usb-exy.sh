#!/bin/sh
set -e

ANDROID_USB=/sys/class/android_usb/android0
GADGET_DIR=/config/usb_gadget

if [[ "$1" == "pre" ]]
then  
  write $ANDROID_USB/enable          0
  write $ANDROID_USB/functions       "adb"
fi

if [[ "$1" == "post" ]]
then  
  write $ANDROID_USB/enable          1
fi
