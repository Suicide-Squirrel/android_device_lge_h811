$(call inherit-product, device/lge/h811/h811.mk)

# Inherit some common AOSCP stuff.
$(call inherit-product, vendor/aoscp/configs/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="p1_tmo_us" \
    PRIVATE_BUILD_DESC="p1_tmo_us-user 6.0 MRA58K 1731216298e5b release-keys"

BUILD_FINGERPRINT := "lge/p1_tmo_us/p1:6.0/MRA58K/1731216298e5b:user/release-keys"
