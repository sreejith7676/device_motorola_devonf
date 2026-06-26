#
# Copyright (C) 2024 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/devonf/device.mk)

# Inherit some common YAAP stuff.
$(call inherit-product, vendor/avium/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := avium_devonf
PRODUCT_DEVICE := devonf
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g73 5G 

AVIUM_SETTINGS_SOC_MODEL_NAME := Dimensity 
AVIUM_SETTINGS_DEVICE_CODENAME := devonf
WITH_GMS := ture
TARGET_FORCE_ENABLE_BLUR := true
AVIUM_FORCE_SET_FAKE_PROP := true
TARGET_INCLUDE_GOOGLEIME := true
TARGET_GOOGLEIME_OVERRIDE_IME := true
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=devonf \
    BuildDesc="devonf_g_sys-user 14 U1TNS34M.82-12-7-16 97b8f release-keys" \
    BuildFingerprint=motorola/devonf_g_sys/devonf:14/U1TNS34M.82-12-7-16/97b8f:user/release-keys
