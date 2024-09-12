#!/bin/bash
set -xe

export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s
export TARGET_SOC=exynos9810
export LLVM_IAS=1

[ -d build ] || git clone https://gitlab.com/ubports/community-ports/halium-generic-adaptation-build-tools --depth=1 build
./build/build.sh "$@"
