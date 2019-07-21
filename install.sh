#! /bin/sh
# Install nordic nRF5_SDK
curl http://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v15.x.x/nRF5_SDK_15.3.0_59ac345.zip > sdk.zip
unzip sdk.zip
mv -v /nRF5_SDK* /sdk
rm sdk.zip

echo """GNU_INSTALL_ROOT := /usr/bin/
GNU_VERSION := 8.3.0
GNU_PREFIX := arm-none-eabi
""" > /sdk/components/toolchain/gcc/Makefile.posix
