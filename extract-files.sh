#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2019 The LineageOS Project
# Copyright (C) 2019-2020 The XPerience Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=addison
VENDOR=motorola

# Load extractutils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

XPERIENCE_ROOT="$MY_DIR"/../../..

HELPER="$XPERIENCE_ROOT"/vendor/aosp/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

while [ "$1" != "" ]; do
    case $1 in
        -n | --no-cleanup )     CLEAN_VENDOR=false
                                ;;
        -s | --section )        shift
                                SECTION=$1
                                CLEAN_VENDOR=false
                                ;;
        * )                     SRC=$1
                                ;;
    esac
    shift
done

if [ -z "$SRC" ]; then
    SRC=adb
fi

# Initialize the helper
setup_vendor "$DEVICE" "$VENDOR" "$XPERIENCE_ROOT" false "$CLEAN_VENDOR"

#extract "$MY_DIR"/proprietary-files-addison.txt "$SRC" "$SECTION"
extract "$MY_DIR"/proprietary-files.txt "$SRC" "$SECTION"
extract "$MY_DIR"/proprietary-files-arm64.txt "$SRC" "$SECTION"

BLOB_ROOT="$XPERIENCE_ROOT"/vendor/"$VENDOR"/"$DEVICE"/proprietary

# Load wrapped shim
patchelf --add-needed libjustshoot_shim.so $BLOB_ROOT/vendor/lib/libjustshoot.so

# Load camera configs from vendor
CAMERA2_SENSOR_MODULES="$BLOB_ROOT"/vendor/lib/libmmcamera2_sensor_modules.so
sed -i "s|/system/etc/camera/|/vendor/etc/camera/|g" "$CAMERA2_SENSOR_MODULES"

"$MY_DIR"/setup-makefiles.sh
