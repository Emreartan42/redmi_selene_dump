#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from selene device
$(call inherit-product, device/xiaomi/selene/device.mk)

PRODUCT_DEVICE := selene
PRODUCT_NAME := lineage_selene
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="selene-user 13 TP1A.220624.014 V14.0.7.0.TKUINXM release-keys"

BUILD_FINGERPRINT := Redmi/selene/selene:12/TP1A.220624.014/V14.0.7.0.TKUINXM:user/release-keys
