#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=a500
MANUFACTURER=acer

rm -r ../../../vendor/$MANUFACTURER/$DEVICE
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/bin/glgps_nvidiaTegra2android ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/asound.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/gps.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/media_profiles.xml ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/nvram.txt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/vold.fstab ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/bcm4329.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvddk_audiofx_core.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvddk_audiofx_transport.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_aacdec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_adtsdec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_audiomixer.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_h264dec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_jpegdec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_jpegenc.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_manager.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_mp2dec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_mp3dec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_mpeg4dec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_reference.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_service.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_sorensondec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_vc1dec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_wavdec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_wmadec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_wmaprodec.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/firmware/nvrm_avp.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/gps/gpsconfig.xml ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/gps.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/gralloc.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/hwcomposer.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/lights.picasso.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/overlay.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/tegra_alsa.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libWVStreamControlAPI.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liba2dp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaceralbum.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libasound.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudio.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcaps.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcgdrv.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgetsourceid.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libhtml2xhtml.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libhwui.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libjni_xt9input.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmllite.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmlplatform.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmpl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvddk_2d.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvddk_2d_v2.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvddk_aes_user.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvddk_audiofx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvddk_vmr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvdispatch_helper.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvdispmgr_d.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_asfparser.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_audio.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_aviparser.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_camera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_contentpipe.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_image.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_manager.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_misc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_msaudio.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_parser.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_service.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_tracklist.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_utils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_vc1_video.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_video.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_videorenderer.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_vp6_video.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvmm_writer.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvodm_dtvtuner.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvodm_imager.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvodm_query.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvomx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvomxilclient.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvos.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvrm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvrm_channel.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvrm_graphics.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvsm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvtestio.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvtestresults.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnvwsi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libpdfhost_pre.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/librmsdkplatform_presys.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libstabilize.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libstagefrighthw.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libstream_core.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libtalk_jni.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libttssynthproxy.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libvoicesearch.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libwvdrm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libwvm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/idc/atmel-maxtouch.idc ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/idc/panjit_touch.idc ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keychars/Acer-AK00LB.kcm ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/Acer-AK00LB.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/acer-dock.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/gpio-keys.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary



. setup-makefiles.sh
