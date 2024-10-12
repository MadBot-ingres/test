#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/ingres/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/ingres

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ingres
TARGET_NO_BOOTLOADER := true

# Use prebuilt kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/ingres/prebuilt/Image

# Kernel
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_NO_KERNEL_OVERRIDE := true
BOARD_BOOTIMG_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image
PRODUCT_COPY_FILES += $(TARGET_PREBUILT_KERNEL):kernel

# Disable kernel build from source
TARGET_KERNEL_CONFIG := 
TARGET_KERNEL_SOURCE :=
INLINE_KERNEL_BUILDING := true

# Vendor_dlkm - prebuilt
TARGET_PREBUILT_VENDOR_DLKM := device/xiaomi/ingres/prebuilt/vendor_dlkm.img
PRODUCT_COPY_FILES += $(TARGET_PREBUILT_VENDOR_DLKM):vendor_dlkm.img

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Screen density
TARGET_SCREEN_DENSITY := 395
