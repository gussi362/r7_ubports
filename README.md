# Ubuntu Touch for Samsung Galaxy Note10+ Exynos (d2s)

# Building Steps

To build by hand, run these commands;

```
./build.sh -b bd  # bd is the name of the build directory
./build/prepare-fake-ota.sh out/device_samsung-d2s.tar.xz ota
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
