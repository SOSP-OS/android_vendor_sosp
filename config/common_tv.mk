# Inherit some common sosp stuff.
$(call inherit-product, vendor/sosp/config/common.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME
