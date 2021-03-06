# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo585

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a77

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# BL
TARGET_BOOTLOADER_BOARD_NAME := kona
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Kernel
BOARD_KERNEL_CMDLINE := \
  console=ttyMSM0,115200n8 \
  androidboot.hardware=qcom \
  androidboot.console=ttyMSM0 \
  video=vfb:640x400,bpp=32,memsize=3072000 \
  msm_rtb.filter=0x237 \
  ehci-hcd.park=3 \
  lpm_levels.sleep_disabled=1 \
  service_locator.enable=1 \
  swiotlb=2048 \
  androidboot.configfs=true \
  firmware_class.path=/vendor/firmware_mnt/image \
  loop.max_part=7 \
  androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += skip_override androidboot.fastboot=1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_ARCH := arm64
TARGET_NO_KERNEL := false
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_PREBUILT_KERNEL := device/blackshark/klein/prebuilt/KLEN2011100CN00MQ3-kernel

# Platform
TARGET_BOARD_PLATFORM := kona
TARGET_BOARD_PLATFORM_GPU := qcom-adreno650

# Part
PRODUCT_USE_DYNAMIC_PARTITIONS := true
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_USES_PRODUCTIMAGE := true

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104853504

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP specific build flags

BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 1273
TW_DEFAULT_BRIGHTNESS := 182
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
AB_OTA_UPDATER := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_THEME := portrait_hdpi
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0
TW_RECOVERY_ADDITIONAL_RELINK_FILES := ${OUT}/system/lib64/android.hardware.boot@1.0.so
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_TWRPAPP := true
TW_NO_BIND_SYSTEM := true
TW_NO_EXFAT_FUSE := true

# Encryption
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true
BOARD_USES_QCOM_FBE_DECRYPTION := true

# Extra
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INCLUDE_REPACKTOOLS := true
TW_HAS_EDL_MODE := true
TARGET_SYSTEM_PROP += $(LOCAL_DIR)/system.prop

# Debug
TARGET_USES_LOGD := true
TWRP_EVENT_LOGGING := true
TWRP_INCLUDE_LOGCAT := true
