# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration for a5ltezt
$(call inherit-product, device/samsung/a5ltezt/full_a5ltezt.mk)

PRODUCT_NAME := lineage_a5ltezt
BOARD_VENDOR := samsung
PRODUCT_DEVICE := a5ltezt

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_VENDOR_PRODUCT_NAME := a5ltezt
TARGET_VENDOR_DEVICE_NAME := a5ltezt
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=a5ltezt PRODUCT_NAME=a5ltezt

# Assert
TARGET_OTA_ASSERT_DEVICE := a5ltezt,a5ltechn

# Fingerprint
BUILD_FINGERPRINT := samsung/a5ltezt/a5ltezt:5.0.2/LRX22G/A500YZZTU1BOK2:user/release-keys
BUILD_DESCRIPTION := a5ltezt-user 5.0.2 LRX22G A500YZZTU1BOK2 release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a5ltezt \
    TARGET_DEVICE="a5ltezt"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
