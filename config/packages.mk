# Copyright (C) 2022 SOSP-OS Project
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

# App packages
PRODUCT_PACKAGES += \
    Launcher3 \
    messaging \
    Stk \
    SoundRecorder \
    SospSettings \
    Recorder \
    Aperture
    
# Clocks
PRODUCT_PACKAGES += \
    SystemUIClocks-Flex \
    SystemUIClocks-Metro \
    SystemUIClocks-BigNum \
    SystemUIClocks-Growth \
    SystemUIClocks-NumOverlap \
    SystemUIClocks-Calligraphy \
    SystemUIClocks-Inflate \
    SystemUIClocks-Weather
    
# Overlay
PRODUCT_PACKAGES += \
    DocumentsUIOverlay
    
# Config
PRODUCT_PACKAGES += \
    SimpleDeviceConfig
    
# Charger mode images
ifeq ($(TARGET_INCLUDE_PIXEL_CHARGER),true)
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images
endif

# Extra tools
PRODUCT_PACKAGES += \
    bash \
    curl \
    getcap \
    htop \
    nano \
    setcap \
    vim  \
    rsync
    
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/curl \
    system/bin/getcap \
    system/bin/setcap

PRODUCT_PACKAGES_DEBUG += \
    procmem

ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/procmem
endif
