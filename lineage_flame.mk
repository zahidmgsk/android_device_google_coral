#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

include device/google/coral/flame/device-lineage.mk

# Pixel Flags
TARGET_IS_PIXEL := true
TARGET_PIXEL_STAND_SUPPORTED := true

# GApps Flag
WITH_GAPPS := true

# Matrixx
MATRIXX_MAINTAINER := Zahid_Choudhry
MATRIXX_CHIPSET := SM8150
MATRIXX_BATTERY := 2800mah
MATRIXX_DISPLAY := 1080x2280

# Device identifier. This must come after all inclusions
PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := google
PRODUCT_DEVICE := flame
PRODUCT_MODEL := Pixel 4
PRODUCT_NAME := lineage_flame

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=flame \
    PRIVATE_BUILD_DESC="flame-user 13 TP1A.221005.002.B2 9382335 release-keys"

BUILD_FINGERPRINT := google/flame/flame:13/TP1A.221005.002.B2/9382335:user/release-keys

$(call inherit-product, vendor/google/flame/flame-vendor.mk)
