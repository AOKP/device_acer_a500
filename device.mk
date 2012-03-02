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

# This file includes all definitions that apply to ALL picasso devices, and
# are also specific to picasso devices
#
# Everything in this directory will become public

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/acer/a500/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel \
	device/acer/a500/prebuilt/init.goldfish.rc:/root/init.goldfish.rc \
	device/acer/a500/prebuilt/init.rc:/root/init.rc \
	device/acer/a500/prebuilt/init.ventana.rc:root/init.ventana.rc \
	device/acer/a500/prebuilt/picasso_postboot.sh:root/picasso_postboot.sh \
	device/acer/a500/prebuilt/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
	device/acer/a500/prebuilt/ueventd.rc:root/ueventd.rc \
	device/acer/a500/prebuilt/init.ventana.usb.rc:root/init.ventana.usb.rc \
	device/acer/a500/prebuilt/ueventd.ventana.rc:root/ueventd.ventana.rc 


DEVICE_PACKAGE_OVERLAYS := \
	device/acer/a500/overlay


PRODUCT_PACKAGES := \
	Camera \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers \
        librs_jni \
	libcamera \
	libcameraservice \
	libstagefrighthw

PRODUCT_PACKAGES += \
	lights.ventana \
	sensors.ventana
	
PRODUCT_PACKAGES += \
	audio \
	libaudioutils
	

PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=5 \
	persist.sys.usb.config=mtp
	
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	device/acer/a500/prebuilt/system/vendor/firmware/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcm4329_apsta.bin \
	device/acer/a500/prebuilt/system/vendor/firmware/fw_bcm4329.bin:system/vendor/firmware/fw_bcm4329.bin \
	device/acer/a500/prebuilt/system/vendor/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
	device/acer/a500/prebuilt/system/xbin/busybox:system/xbin/busybox \
	device/acer/a500/modules/bcm4329.ko:system/lib/modules/bcm4329.ko \
	device/acer/a500/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
        device/acer/a500/idc/eGalax_Serial.idc:system/usr/idc/eGalax_Serial.idc \
        device/acer/a500/idc/elantech_touchscreen.idc:system/usr/idc/elantech_touchscreen.idc \
        device/acer/a500/prebuilt/system/permissions/android.hardware.sensor.proximity.xml:system/permissions/android.hardware.sensor.proximity.xml \
        device/acer/a500/prebuilt/system/permissions/android.hardware.telephony.gsm.xml:system/permissions/android.hardware.telephony.gsm.xml \
        device/acer/a500/prebuilt/system/permissions/android.hardware.wifi.direct.xml:system/permissions/android.hardware.wifi.direct.xml \
        device/acer/a500/prebuilt/system/etc/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
        device/acer/a500/prebuilt/system/etc/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin \
        device/acer/a500/prebuilt/system/etc/firmware/nvmm_sw_mp3dec.axf:system/etc/firmware/nvmm_sw_mp3dec.axf

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES := \
	ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=160

#Set default.prop properties from nopy 
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    persist.service.adb.enable=1

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    persist.service.adb.enable=1

PRODUCT_BUILD_PROP_OVERRIDES += \
    wifi.interface=wlan0


PRODUCT_CHARACTERISTICS := tablet
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	libtinyalsa \
	audio.primary.tegra \
	librs_jni \
	com.android.future.usb.accessory
	
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs
	
$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/acer/a500/a500-vendor.mk)

BOARD_WLAN_DEVICE_REV := bcm4329
WIFI_BAND             := 802_11_ABG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)
