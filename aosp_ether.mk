# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOT_ANIMATION_RES :=1080

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

#Pixel-Style
$(call inherit-product, vendor/pixelstyle/config.mk)

#GApps
TARGET_GAPPS_ARCH := arm64

# Official Support
export CUSTOM_BUILD_TYPE=OFFICIAL

# Inherit device configuration
$(call inherit-product, device/nextbit/ether/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_ether
BOARD_VENDOR := nextbit
TARGET_VENDOR := nextbit
PRODUCT_DEVICE := ether

PRODUCT_BRAND := Nextbit
PRODUCT_MODEL := Robin
PRODUCT_MANUFACTURER := Nextbit

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ether-user 7.1.1 Robin_Nougat_108 00WW_Jenkins_108 release-keys"

BUILD_FINGERPRINT := Nextbit/ether/ether:7.1.1/Robin_Nougat_108/00WW_Jenkins_108:user/release-keys
