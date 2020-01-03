#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2019 The LineageOS Project
# Copyright (C) 2019-2020 The XPerience Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/addison/full_addison.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := addison
PRODUCT_NAME := aosp_addison
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/addison/addison:8.0.0/OPN27.76-12-2/4:user/release-keys \
    PRIVATE_BUILD_DESC="addison-user 8.0.0 OPN27.76-12-2 4 release-keys" \
    PRODUCT_NAME="Moto Z Play"
