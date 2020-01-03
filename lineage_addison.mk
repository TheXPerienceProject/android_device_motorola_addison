#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2019 The LineageOS Project
# Copyright (C) 2019-2020 The XPerience Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/addison/full_addison.mk)
# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := addison
PRODUCT_NAME := lineage_addison
PRODUCT_BRAND := motorola
BOARD_VENDOR := motorola
PRODUCT_MANUFACTURER := motorola

#needed to build hidl base and manager for oreo blobs
IS_LINEAGE := true
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0_system

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# Encryption
PRODUCT_PACKAGES += \
    vendor.qti.hardware.cryptfshw@1.0-service-qti.qsee

SELINUX_IGNORE_NEVERALLOWS := true

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := \
    ro.product.model \
    ro.product.vendor.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sargo-user 9.0.0 PQ3B.190605.006 5560048 release-keys" \
    PRODUCT_NAME="Moto Z Play"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/sargo/sargo:9/PQ3B.190605.006/5560048:user/release-keys"
