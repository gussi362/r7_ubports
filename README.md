# Ubuntu Touch for Samsung Galaxy Note10 Lite Exynos (r7)

### special thanks to [YaAlex32](https://github.com/YaAlex3) .both kernel and this repo were forked from him ,he did most of the heavy lifting and pointed alot of things to me.

> latest kernel for this lives at https://github.com/gussi362/kernel_samsung_r7_ub

## Current issues:
  <li>usb-moded adb mode</li>
  <li>Aethercast wireless display (currently it reports wrong pixel format after fixing camera panic,it does connect now nonetheless)</li>
  <li>Proximity sensor</li>
  <li>Fingerprint(wake screen but does nothing else)</li>
  <li>Double tap to wake works using device-hacks ,enabling it in system gestures will make it stop!</li>
  <li>snap & winebox are added but still need testing</li>
  <li>waydroid [read more here](https://gitlab.com/ubports/development/core/packaging/waydroid/-/issues/24) </li>

## TLDR
> other than this long list of things that doesn't work everything else works as intended .

## TODO:
  <li>ci build</li>
  <li>rebase repos for more sane commits.</li>
  <li>move to gitlab</li>
  <li>Recovery image</li>
  <del><li>upload a working boot & rootfs image </li></del>
  <li>more tests</li>

# [TMP] Download latest build (flash at your own risk)
> download boot image and rootfs from [here](https://ubports.inc-digital.com/upload/c05819fa5b9ee418a676bad447522e0a8356cd)
> filesharing is courtisy of [axeloz](https://github.com/axeloz). you can check it out [here](https://github.com/axeloz/filesharing)  . 
# Building Steps

To build by hand, run these commands;

```
./build.sh -b bd  # bd is the name of the build directory
./build/prepare-fake-ota.sh out/device_samsung-r7.tar.xz ota
./build/system-image-from-ota.sh ota/ubuntu_command out
```

# Installation

To install, follow these steps;
- extract the zip file you downloaded .
- install latest fluid rom. you can find it [here](https://t.me/note10literoms). 
- push ubuntu.img to data (you can format as ext4 or keep using f2fs but not guarnteed it will be good)
  ```
  adb push ubuntu.img /data/ubuntu.img
  ```
- Flash boot.img onto boot
```
flash using your recovery , make sure to take a backup of your current system 
```


- Reboot the System
