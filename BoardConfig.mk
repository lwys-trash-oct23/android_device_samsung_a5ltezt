#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Board config for CHN Open-like A5 2015 variants

include vendor/samsung/a5lte/BoardConfigBase.mk

DEVICE_PATH := device/samsung/a5ltezt

TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_a5_chnopen_defconfig
#ifeq ($(WITH_TWRP),true) # FIXME
#TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_a5u_eur_twrp_defconfig
#endif

# Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Init
TARGET_INIT_VENDOR_LIB ?= //$(DEVICE_PATH):libinit_a5lte_zt
TARGET_RECOVERY_DEVICE_MODULES ?= libinit_a5lte_zt