#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

include device/google/coral/coral/device-lineage.mk

# Pixel Flags
TARGET_IS_PIXEL := true
TARGET_PIXEL_STAND_SUPPORTED := true

# GApps Flag
WITH_GAPPS := true

# Matrixx
MATRIXX_MAINTAINER := Zahid_Choudhry
MATRIXX_CHIPSET := SM8150
MATRIXX_BATTERY := 3700mah
MATRIXX_DISPLAY := 1440x3040

# Device identifier. This must come after all inclusions
PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := google
PRODUCT_DEVICE := coral
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := lineage_coral

# Boot animation
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1080

# Pixel Flags
TARGET_IS_PIXEL := true
TARGET_PIXEL_STAND_SUPPORTED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=coral \
    PRIVATE_BUILD_DESC="coral-user 13 TP1A.221005.002.B2 9382335 release-keys"

BUILD_FINGERPRINT := google/coral/coral:13/TP1A.221005.002.B2/9382335:user/release-keys

$(call inherit-product, vendor/google/coral/coral-vendor.mk)
