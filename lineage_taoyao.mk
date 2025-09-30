#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from taoyao device
$(call inherit-product, device/xiaomi/taoyao/device.mk)

# Inherit from common Evolution X configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
TARGET_INCLUDE_ACCORD := false
TARGET_DISABLE_EPPE := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_taoyao
PRODUCT_DEVICE := taoyao
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2203129G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

SystemName := taoyao_global
SystemDevice := taoyao

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="taoyao_global-user 14 UKQ1.231003.002 V816.0.26.0.ULIMIXM release-keys" \
    DeviceName=$(SystemDevice) \
    DeviceProduct=$(SystemName) \
    RisingChipset="Snapdragon 778G" \
    RisingMaintainer="ammarbahtiarasli"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/taoyao_global/taoyao:14/UKQ1.231003.002/V816.0.26.0.ULIMIXM:user/release-keys

# Lunch banner maintainer variable
RISING_MAINTAINER="ammarbahtiarasli"
RISING_MAINTAINER := ammarbahtiarasli

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# GMS build flags, true by default
# Ship with GMS packages, replaces default AOSP packages with Google manufactured packages.
WITH_GMS := true