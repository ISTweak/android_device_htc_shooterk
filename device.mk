#
# Copyright (C) 2011 The CyanogenMod Project
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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/htc/shooterk/shooterk-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/shooterk/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
    device/htc/shooterk/ramdisk/init.shooterk.rc:root/init.shooterk.rc \
    device/htc/shooterk/ramdisk/init.shooterk.usb.rc:root/init.shooterk.usb.rc \
    device/htc/shooterk/ramdisk/ueventd.shooterk.rc:root/ueventd.shooterk.rc \
    device/htc/shooterk/ramdisk/fstab.shooterk:root/fstab.shooterk

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

$(call inherit-product-if-exists, vendor/htc/shooterk/shooterk-vendor.mk)
