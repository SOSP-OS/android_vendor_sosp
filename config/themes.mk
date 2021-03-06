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

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

# Theme Packages
PRODUCT_PACKAGES += \
    ThemePicker \
    ThemeStub
    
# Accents   
PRODUCT_PACKAGES += \
    BlackAccents \
    BlueGrayAccents \
    CyanAccents \
    IndigoAccents \
    OrangeAccents \
    PixelBlueAccents \
    RedAccents \
    TealAccents \
    VioletAccents \
    YellowAccents

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    LatoFont \
    RubikFont
    
    
    
    
    
    
    
    
    
    
