# Copyright (C) 2016 The CyanogenMod Project
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

PRODUCT_RELEASE_NAME := le_zl1

# Create root folders
$(shell mkdir -p out/target/product/le_zl1/recovery/root)
$(shell mkdir -p out/target/product/le_zl1/root)

# Inherit some common stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from le_zl1 device
$(call inherit-product, device/le/le_zl1/device.mk)

PRODUCT_BRAND := LeEco
PRODUCT_DEVICE := le_zl1
PRODUCT_NAME := cm_le_zl1
PRODUCT_MANUFACTURER := LeMobile
PRODUCT_MODEL := LEX720

#PRODUCT_GMS_CLIENTID_BASE := android-leeco

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=LeEco/ZL1_CN/le_zl1:6.0.1/WAXCNFN5902011181S/letv11180649:user/release-keys \
    PRIVATE_BUILD_DESC="le_zl1-user 6.0.1 WAXCNFN5902011181S eng.letv.20161118.064606 release-keys"

