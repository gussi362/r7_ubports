#!/bin/sh

export QMLSCENE_DEVICE=haliumqsgcontext

ANDROID_USB=/sys/class/android_usb/android0
GADGET_DIR=/config/usb_gadget

mkdir $GADGET_DIR/g1
mkdir $GADGET_DIR/g1/strings/0x409
mkdir $GADGET_DIR/g1/functions/rndis.usb0
mkdir $GADGET_DIR/g1/functions/rndis_bam.rndis
mkdir $GADGET_DIR/g1/configs/c.1
mkdir $GADGET_DIR/g1/configs/c.1/strings/0x409
write $GADGET_DIR/g1/configs/c.1/strings/0x409/configuration "Conf 1"
