# Ubuntu Touch for Samsung Galaxy Note10 Lite Exynos (r7)

### special thanks to [YaAlex32](https://github.com/YaAlex3) .both kernel and this repo were forked from him ,he did most of the heavy lifting and pointed alot of things to me.

> latest kernel for this lives at https://github.com/gussi362/kernel_samsung_r7_ub

## Current issues:
  <li>usb-moded adb mode</li>
  <li>Aethercast wireless display (it just dies and i don't even know where to begin)</li>
  <li>Proximity sensor</li>
  <li>Fingerprint</li>
  <li>Double tap to wake works using device-hacks ,enabling it in system gestures will make it stop!</li>
  <li>snap & winebox are added but still need testing</li>
  <li>waydroid [read more here](https://gitlab.com/ubports/development/core/packaging/waydroid/-/issues/24) </li>

## TLDR
> other than this long list of things that doesn't work everything else works as intended .

## TODO:
  <li>ci build</li>
  <li>Recovery image</li>
  <li>upload a stable boot & system image </li>
  <li>more tests</li>

  
# Building Steps

To build by hand, run these commands;

```
./build.sh -b bd  # bd is the name of the build directory
./build/prepare-fake-ota.sh out/device_samsung-r7.tar.xz ota
./build/system-image-from-ota.sh ota/ubuntu_command out
```

# Installation

To install, follow these steps;

- Get the vendor image for your device
- Wipe data and system
- Flash boot.img onto boot
```
fastboot flash boot out/boot.img
```

- Flash system.img onto system
```
fastboot flash system out/system.img
```

- Flash vendor image onto vendor
```
fastboot flash vendor vendor.img
```

- Enable ADB & Mount data partition
```
adb shell mount /data
```

- Copy ubuntu.img to /data
```
adb push ubuntu.img /data/
```

- Reboot the System
