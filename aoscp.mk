# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from h811 device
$(call inherit-product, device/lge/h811/device.mk)

# Inherit some common AOSCP stuff.
$(call inherit-product, vendor/aoscp/configs/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h811
PRODUCT_NAME := aoscp_h811
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H811
PRODUCT_MANUFACTURER := LGE

PRODUCT_GMS_CLIENTID_BASE := android-lge

TARGET_VENDOR_PRODUCT_NAME := "LG G4 H811"
TARGET_VENDOR_DEVICE_NAME := "LG G4 H811"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="p1_tmo_us" \
    PRIVATE_BUILD_DESC="p1_tmo_us-user 6.0 MRA58K 1731216298e5b release-keys"

BUILD_FINGERPRINT := "lge/p1_tmo_us/p1:6.0/MRA58K/1731216298e5b:user/release-keys"
