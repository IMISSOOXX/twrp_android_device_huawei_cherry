# Release name
PRODUCT_RELEASE_NAME := cherry

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery.fstab:root/etc/recovery.fstab

# Include tzdata for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cherry
PRODUCT_NAME := omni_cherry
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := cherry
PRODUCT_MANUFACTURER := HUAWEI
