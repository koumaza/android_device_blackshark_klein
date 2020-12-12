PRODUCT_RELEASE_NAME := klein
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, device/blackshark/klein/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := klein
PRODUCT_NAME := koumaza_klein
PRODUCT_BRAND := blackshark
PRODUCT_MODEL := KLE-A0  #BlackShark 3
#PRODUCT_MODEL := KLE-A1 #BlackShark 3S
PRODUCT_MANUFACTURER := blackshark

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=klein \
    BUILD_PRODUCT=klein \
    TARGET_DEVICE=klein
