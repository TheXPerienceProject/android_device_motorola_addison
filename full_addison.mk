#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2019 The LineageOS Project
# Copyright (C) 2019-2020 The XPerience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from addison device
$(call inherit-product, device/motorola/addison/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := addison
PRODUCT_NAME := full_addison

$(call inherit-product-if-exists, vendor/motorola/addison/addison-vendor.mk)
