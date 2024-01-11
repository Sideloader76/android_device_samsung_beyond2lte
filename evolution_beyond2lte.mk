#
# Copyright (C) 2021 The LineageOS Project
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

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

## Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

## Inscreen Fingerprint HAL
TARGET_HAVE_FOD := true

## Inherit from beyond2lte device
$(call inherit-product, device/samsung/beyond2lte/device.mk)

## Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440

## Inherit some common Evolution stuff
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

TARGET_ENABLE_BLUR := false
TARGET_FACE_UNLOCK_SUPPORTED := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_PICO_GAPPS := true
TARGET_INCLUDE_GRAMOPHONE := true
TARGET_BUILD_VIMUSIC := true
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_SUPPORTS_TOUCHGESTURES := true
TARGET_INCLUDE_PIXEL_CHARGER := true
EVO_BUILD_TYPE := UNOFFICIAL

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := evolution_beyond2lte
PRODUCT_DEVICE := beyond2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G975F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Some Extra Stuffs.
EVO_SUPPORT_URL := https://t.me/FrEeRuNnEr4EvErHeLp
EVO_SIGNED := true
BUILD_USERNAME := Mgm2023
BUILD_HOSTNAME := Evolution-X
