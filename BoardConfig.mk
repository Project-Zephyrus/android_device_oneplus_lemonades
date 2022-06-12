#
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
#

# Inherit from oneplus sm8250-common
-include device/oneplus/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/instantnoodlep

# PowerShare
SOONG_CONFIG_NAMESPACES += ONEPLUS_POWERSHARE
SOONG_CONFIG_ONEPLUS_POWERSHARE := WIRELESS_TX_ENABLE_PATH
SOONG_CONFIG_ONEPLUS_POWERSHARE_WIRELESS_TX_ENABLE_PATH := /proc/wireless/enable_tx

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# inherit from the proprietary version
-include vendor/oneplus/instantnoodlep/BoardConfigVendor.mk

# Recovery
TARGET_RECOVERY_DENSITY := xxhdpi
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 121