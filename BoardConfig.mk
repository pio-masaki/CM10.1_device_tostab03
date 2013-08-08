#
# Copyright (C) 2012 The CyanogenMod Project
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
#

# Platform
TARGET_BOARD_PLATFORM   := tegra
TARGET_CPU_ABI          := armeabi-v7a
TARGET_CPU_ABI2         := armeabi
TARGET_ARCH_VARIANT     := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_ARCH             := arm
TARGET_CPU_SMP          := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := antares
TARGET_OTA_ASSERT_DEVICE := antares,tostab03
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USERIMAGES_USE_EXT4  := true
BOARD_USES_GENERIC_INVENSENSE := false

# kernel
TARGET_KERNEL_SOURCE := kernel/toshiba/tostab03
TARGET_KERNEL_CONFIG := cyanogenmod_tostab03_defconfig
# kernel - prebuilt binary
#TARGET_PREBUILT_KERNEL := device/toshiba/tostab03/prebuilt/kernel
BOARD_KERNEL_CMDLINE := BOARD_KERNEL_CMDLINE := nvmem=128M@384M mem=1024M@0M vmalloc=256M video=tegrafb tegra_fbmem=0x3e8a00@0x1fbfa000 console=ttyS0,115200n8 debug_uartport=hsport usbcore.old_scheme_first=1 lp0_vec=8192@0x1fbee000 tegraboot=sdmmc board_info=4249:ff41:ff:ff:54 gpt androidboot.carrier=wifi-only
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE :=

# Recovery
#TARGET_PREBUILT_RECOVERY_KERNEL := device/toshiba/tostab03/prebuilt/ramdisk/recovery_kernel
#TARGET_RECOVERY_FSTAB := device/toshiba/tostab03/recovery.fstab
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM := ext4

# Display
USE_OPENGL_RENDERER    := true
BOARD_EGL_CFG          := device/toshiba/tostab03/prebuilt/etc/egl.cfg
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
# BOARD_USE_SKIA_LCDTEXT := true
# BOARD_USES_HGL := true
# BOARD_USES_OVERLAY := true
BOARD_EGL_NEEDS_LEGACY_FB := true

# Audio
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := false
USE_PROPRIETARY_AUDIO_EXTENSIONS := false

# GPS
BOARD_HAVE_GPS := true

# RIL
#BOARD_USES_LEGACY_RIL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/toshiba/tostab03/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/toshiba/tostab03/bluetooth/bt_vendor.conf

# USB 
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun/file"

# Wireless
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/vendor/firmware/fw_bcmdhd.bin nvram_path=/system/vendor/firmware/bcmdhd.cal iface_name=wlan0"

# Partition
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5989632
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 734003200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_VOLD_MAX_PARTITIONS := 8

# Recovery Options
BOARD_CUSTOM_BOOTIMG_MK := device/toshiba/tostab03/recovery/recovery.mk
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_INITRC := device/toshiba/tostab03/recovery/init.rc
TARGET_RECOVERY_PRE_COMMAND := "setboot"
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_NO_REAL_SDCARD := true

# Fix no reboot into recovery?
TARGET_RECOVERY_PRE_COMMAND := "echo 'boot-recovery' > /dev/block/mmcblk0p1; sync"

# TWRP
DEVICE_RESOLUTION := 1280x800
TW_NO_REBOOT_BOOTLOADER := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
