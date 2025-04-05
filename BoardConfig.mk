#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6375-common
-include device/oneplus/sm6375-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/dre

# Assert
TARGET_OTA_ASSERT_DEVICE := OnePlusN200,OnePlusN200TMO,dre

# Kernel
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
TARGET_KERNEL_SOURCE := kernel/oneplus/sm4350

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54429298688
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 5837979648
BOARD_SUPER_PARTITION_SIZE := 11675959296

# Inherit the proprietary files
-include vendor/oneplus/dre/BoardConfigVendor.mk
