$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/beyond0lte/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_beyond0lte
PRODUCT_DEVICE := beyond0lte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-G970F
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=beyond0lte \
    PRIVATE_BUILD_DESC="SM-G970F-user"

BUILD_FINGERPRINT := Samsung/SM-G970F/user/release-keys

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif

ifneq ($(LINEAGE_VERITY_CERTIFICATE),)
    PRODUCT_VERITY_SIGNING_KEY := $(LINEAGE_VERITY_CERTIFICATE)
endif
