#
# Copyright (C) 2011 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include vendor/acer/a500/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_OTA_ASSERT_SKIP := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
TARGET_PREBUILT_KERNEL := device/acer/a500/kernel

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_EGL_CFG := device/acer/a500/egl.cfg

BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true

USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := true
TARGET_QCOM_HDMI_OUT := true
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_USES_GENLOCK := true

TARGET_FORCE_CPU_UPLOAD := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# Use screencap to capture frame buffer for ddms
BOARD_USE_SCREENCAP := true

# Use dirty hack to allow froyo libaudio
BOARD_USE_KINETO_COMPATIBILITY := true
BOARD_USES_HONEYCOMB_AUDIOPOLICY := true

BUILD_LIBCAMERA := true
BOARD_CAMERA_LIBRARIES := libcameraservice libcamera
USE_CAMERA_STUB:= false

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 685768704
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14539537408
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_HOSTAPD_DRIVER        := WEXT
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_wext
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcm4329/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/nvram.txt iface_name=wlan0"

BOARD_HAS_SDCARD_INTERNAL := true

BOARD_DATA_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p4
BOARD_CACHE_FILESYSTEM := ext4

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_VENDOR_USE_AKMD := akm8973

# Enabled For HW Video Decoding
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_USE_SOFTWARE_AUDIO_AAC := true

# Enabled for HW video recording
BOARD_USES_HW_MEDIARECORDER := true

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
