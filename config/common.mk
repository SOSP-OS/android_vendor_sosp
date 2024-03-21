# Copyright (C) 2020 SOSP-OS Project
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

# APN
PRODUCT_COPY_FILES += \
    vendor/sosp/prebuilt/common/etc/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml

# AR
PRODUCT_COPY_FILES += \
    vendor/sosp/prebuilt/common/etc/calibration_cad.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/calibration_cad.xml

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/sosp/prebuilt/common/bin/50-sosp.sh:$(TARGET_COPY_OUT_SYSTEM)/addon.d/50-sosp.sh \
    vendor/sosp/prebuilt/common/bin/backuptool.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool.sh \
    vendor/sosp/prebuilt/common/bin/backuptool.functions:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool.functions

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/addon.d/50-sosp.sh

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/backuptool.sh \
    system/bin/backuptool.functions
        
# Device Common Overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/sosp/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.sip.voip.xml

# Enable gestural navigation overlay to match default navigation mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural
    
# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED ?= true

ifeq ($(TARGET_FACE_UNLOCK_SUPPORTED),true)
PRODUCT_PACKAGES += \
    ParanoidSense

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.face.sense_service=true

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml
endif

# Priv-app config
PRODUCT_COPY_FILES += \
    vendor/sosp/config/permissions/privapp-permissions-sosp.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-sosp.xml

# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Disable vendor restrictions
PRODUCT_RESTRICT_VENDOR_FILES := false

# Init.d script support
PRODUCT_COPY_FILES += \
    vendor/sosp/prebuilt/common/etc/init/init.sosp-system_ext.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.sosp-system_ext.rc \
    vendor/sosp/prebuilt/common/etc/init/init.sosp-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.sosp-updater.rc \
    vendor/sosp/prebuilt/common/etc/init/init.openssh.rc:$(TARGET_COPY_OUT_PRODUCT)/etc/init/init.openssh.rc
      
# System mount
PRODUCT_COPY_FILES += \
    vendor/sosp/prebuilt/common/bin/system-mount.sh:install/bin/system-mount.sh

# SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.systemuicompilerfilter=speed
    
# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true
        
# Boot animations
include vendor/sosp/config/bootanimation.mk

# Packages
include vendor/sosp/config/packages.mk

# Props
include vendor/sosp/config/props.mk

# Sounds
include vendor/sosp/config/sounds.mk

# SOSP Themes
include vendor/sosp/config/themes.mk
