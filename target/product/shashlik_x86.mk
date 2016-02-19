$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/board/generic_x86/device.mk)

include $(SRC_TARGET_DIR)/product/emulator.mk

# ifdef NET_ETH0_STARTONBOOT
  PRODUCT_PROPERTY_OVERRIDES += net.eth0.startonboot=1
# endif

# Put en_US first in the list, so make it default.
PRODUCT_LOCALES := en_US

# Include drawables for all densities
PRODUCT_AAPT_CONFIG := normal

# Ensure we package the BIOS files too.
PRODUCT_PACKAGES += \
	bios.bin \
	vgabios-cirrus.bin \
	Shashlikd

# Overrides
PRODUCT_NAME := shashlik_x86
PRODUCT_DEVICE := generic_x86
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on IA Emulator
