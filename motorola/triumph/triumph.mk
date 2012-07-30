#
# Copyright (C) 2009 The Android Open Source Project
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

#
# This is the product configuration for a motorola triumph,
# not specialized for any geography.
#

# The gps config appropriate for this device
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/triumph/triumph-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/triumph/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/motorola/triumph/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    Gallery3d \
    SpareParts \
    LatinIME \
    Mms \
    gps.triumph \
    lights.triumph \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    overlay.default \
    libOmxCore \
    libOmxVenc \
    libOmxVdec

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x30

# Init files
PRODUCT_COPY_FILES += \
    device/motorola/triumph/init.triumph.rc:root/init.triumph.rc \
    device/motorola/triumph/ueventd.triumph.rc:root/ueventd.triumph.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

########################################################
# These are proprietary files for the Motorola Triumph #
#                       START                          #
########################################################

# Audio 
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
    device/motorola/triumph/system/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
    device/motorola/triumph/system/lib/liba2dp.so:system/lib/liba2dp.so \
    device/motorola/triumph/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/motorola/triumph/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# APN/MMS
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/etc/apns-conf.xml:system/etc/apns-conf.xml

# BIN
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/bin/bluetoothd:system/bin/bluetoothd \
    device/motorola/triumph/system/bin/btwlancoex:system/bin/btwlancoex \
    device/motorola/triumph/system/bin/cnd:system/bin/cnd \
    device/motorola/triumph/system/bin/geomagneticd:system/bin/geomagneticd \
    device/motorola/triumph/system/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/motorola/triumph/system/bin/hciattach:system/bin/hciattach \
    device/motorola/triumph/system/bin/hdmid:system/bin/hdmid \
    device/motorola/triumph/system/bin/lightd:system/bin/lightd \
    device/motorola/triumph/system/bin/mm-abl-test:system/bin/mm-abl-test \
    device/motorola/triumph/system/bin/mm-adec-omxaac-test:system/bin/mm-adec-omxaac-test \
    device/motorola/triumph/system/bin/mm-adec-omxadpcm-test:system/bin/mm-adec-omxadpcm-test \
    device/motorola/triumph/system/bin/mm-adec-omxamr-test:system/bin/mm-adec-omxamr-test \
    device/motorola/triumph/system/bin/mm-adec-omxamrwb-test:system/bin/mm-adec-omxamrwb-test \
    device/motorola/triumph/system/bin/mm-adec-omxevrc-test:system/bin/mm-adec-omxevrc-test \
    device/motorola/triumph/system/bin/mm-adec-omxmp3-test:system/bin/mm-adec-omxmp3-test \
    device/motorola/triumph/system/bin/mm-adec-omxQcelp13-test:system/bin/mm-adec-omxQcelp13-test \
    device/motorola/triumph/system/bin/mm-adec-omxwma-test:system/bin/mm-adec-omxwma-test \
    device/motorola/triumph/system/bin/mm-adspsvc-test:system/bin/mm-adspsvc-test \
    device/motorola/triumph/system/bin/mm-aenc-omxaac-test:system/bin/mm-aenc-omxaac-test \
    device/motorola/triumph/system/bin/mm-aenc-omxamr-test:system/bin/mm-aenc-omxamr-test \
    device/motorola/triumph/system/bin/mm-aenc-omxevrc-test:system/bin/mm-aenc-omxevrc-test \
    device/motorola/triumph/system/bin/mm-aenc-omxqcelp13-test:system/bin/mm-aenc-omxqcelp13-test \
    device/motorola/triumph/system/bin/mm-audio-alsa-test:system/bin/mm-audio-alsa-test \
    device/motorola/triumph/system/bin/mm-audio-ctrl-test:system/bin/mm-audio-ctrl-test \
    device/motorola/triumph/system/bin/mm-audio-mvs-test-int:system/bin/mm-audio-mvs-test-int \
    device/motorola/triumph/system/bin/mm-audio-mvs-test-ext:system/bin/mm-audio-mvs-test-ext \
    device/motorola/triumph/system/bin/mm-audio-native-test:system/bin/mm-audio-native-test \
    device/motorola/triumph/system/bin/mm-audio-voem_if-test:system/bin/mm-audio-voem_if-test \
    device/motorola/triumph/system/bin/mm-jpeg-dec-test:system/bin/mm-jpeg-dec-test \
    device/motorola/triumph/system/bin/mm-jpeg-enc-test:system/bin/mm-jpeg-enc-test \
    device/motorola/triumph/system/bin/mm-omx-devmgr:system/bin/mm-omx-devmgr \
    device/motorola/triumph/system/bin/mm-qcamera-test:system/bin/mm-qcamera-test \
    device/motorola/triumph/system/bin/mm-qcamera-testsuite-client:system/bin/mm-qcamera-testsuite-client \
    device/motorola/triumph/system/bin/mm-vdec-omx-test:system/bin/mm-vdec-omx-test \
    device/motorola/triumph/system/bin/mm-venc-omx-test:system/bin/mm-venc-omx-test \
    device/motorola/triumph/system/bin/mm-venc-omx-test720p:system/bin/mm-venc-omx-test720p \
    device/motorola/triumph/system/bin/mm-video-driver-test:system/bin/mm-video-driver-test \
    device/motorola/triumph/system/bin/mm-video-encdrv-test:system/bin/mm-video-encdrv-test \
    device/motorola/triumph/system/bin/netmgrd:system/bin/netmgrd \
    device/motorola/triumph/system/bin/orientationd:system/bin/orientationd \
    device/motorola/triumph/system/bin/port-bridge:system/bin/port-bridge \
    device/motorola/triumph/system/bin/proximityd:system/bin/proximityd \
    device/motorola/triumph/system/bin/qmuxd:system/bin/qmuxd \
    device/motorola/triumph/system/bin/rmt_storage:system/bin/rmt_storage \
    device/motorola/triumph/system/bin/thermald:system/bin/thermald \
    device/motorola/triumph/system/bin/wpdiagd:system/bin/wpdiagd

#Camera
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/lib/libcamera.so:system/lib/libcamera.so \
    device/motorola/triumph/system/lib/libcamera.so:obj/lib/libcamera.so \
    device/motorola/triumph/system/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/motorola/triumph/system/lib/libmmipl.so:system/lib/libmmipl.so \
    device/motorola/triumph/system/lib/libmmjpeg.so:system/lib/libmmjpeg.so

# GPS
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/etc/gps.conf:system/etc/gps.conf \
    device/motorola/triumph/system/etc/SuplRootCert:system/etc/SuplRootCert \
    device/motorola/triumph/system/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    device/motorola/triumph/system/lib/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so

# Hostapd
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/bin/hostapd:system/bin/hostapd \
    device/motorola/triumph/system/bin/hostapd_cli:system/bin/hostapd_cli \
    device/motorola/triumph/system/etc/firmware/wlan/hostapd_default.conf:system/etc/firmware/wlan/hostapd_default.conf \
    device/motorola/triumph/system/etc/init.d/08hostapd:system/etc/init.d/08hostapd

# Init.d task management
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/etc/init.d/99memory:system/etc/init.d/99memory

#Init Scripts
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/etc/init.apn.sh:system/etc/init.apn.sh \
    device/motorola/triumph/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/motorola/triumph/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh\
    device/motorola/triumph/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/motorola/triumph/system/etc/init.qcom.sdio.sf6.sh:system/etc/init.qcom.sdio.sf6.sh \
    device/motorola/triumph/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/motorola/triumph/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/motorola/triumph/system/etc/telephony.sql:system/etc/telephony.sql

# Keychars
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/usr/keychars/fih_headsethook.kcm.bin:system/usr/keychars/fih_headsethook.kcm.bin \
    device/motorola/triumph/system/usr/keychars/fih_ringswitch.kcm.bin:system/usr/keychars/fih_ringswitch.kcm.bin \
    device/motorola/triumph/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/motorola/triumph/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/motorola/triumph/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/bi041p.kcm.bin \
    device/motorola/triumph/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/fbx_kybd.kcm.bin \
    device/motorola/triumph/system/usr/keychars/sf6_kybd.kcm.bin:system/usr/keychars/sf6_kybd.kcm.bin \
    device/motorola/triumph/system/usr/keychars/sf8_kybd.kcm.bin:system/usr/keychars/sf8_kybd.kcm.bin \
    device/motorola/triumph/system/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/motorola/triumph/system/usr/keychars/surf_keypad_qwerty.kcm.bin:system/usr/keychars/surf_keypad_qwerty.kcm.bin \
    device/motorola/triumph/system/usr/keychars/surf_keypad_numeric.kcm.bin:system/usr/keychars/surf_keypad_numeric.kcm.bin

# Keylayouts
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/usr/keylayout/fih_headsethook.kl:system/usr/keylayout/fih_headsethook.kl \
    device/motorola/triumph/system/usr/keylayout/fih_ringswitch.kl:system/usr/keylayout/fih_ringswitch.kl \
    device/motorola/triumph/system/usr/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/motorola/triumph/system/usr/keylayout/fbx_kybd.kl:system/usr/keylayout/fbx_kybd.kl \
    device/motorola/triumph/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/motorola/triumph/system/usr/keylayout/sf6_kybd.kl:system/usr/keylayout/sf6_kybd.kl \
    device/motorola/triumph/system/usr/keylayout/sf8_kybd.kl:system/usr/keylayout/sf8_kybd.kl \
    device/motorola/triumph/system/usr/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
    device/motorola/triumph/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/motorola/triumph/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/motorola/triumph/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

#Media
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/lib/libcommondefs.so:obj/lib/libcommondefs.so \
    device/motorola/triumph/system/lib/libcommondefs.so:system/lib/libcommondefs.so \
    device/motorola/triumph/system/lib/libgemini.so:system/lib/libgemini.so \
    device/motorola/triumph/system/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/motorola/triumph/system/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    device/motorola/triumph/system/lib/libmmgsdilib.so:system/lib/libgemini.so \
    device/motorola/triumph/system/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/motorola/triumph/system/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    device/motorola/triumph/system/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    device/motorola/triumph/system/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    device/motorola/triumph/system/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    device/motorola/triumph/system/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    device/motorola/triumph/system/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    device/motorola/triumph/system/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
    device/motorola/triumph/system/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    device/motorola/triumph/system/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    device/motorola/triumph/system/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
    device/motorola/triumph/system/lib/libOmxCore.so:system/lib/libOmxCore.so \
    device/motorola/triumph/system/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    device/motorola/triumph/system/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    device/motorola/triumph/system/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    device/motorola/triumph/system/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    device/motorola/triumph/system/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    device/motorola/triumph/system/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \
    device/motorola/triumph/system/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    device/motorola/triumph/system/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
    device/motorola/triumph/system/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
    device/motorola/triumph/system/lib/libOmxVenc.so:system/lib/libOmxVenc.so \
    device/motorola/triumph/system/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so

#Media Firmware
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/etc/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/motorola/triumph/system/etc/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/motorola/triumph/system/etc/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/motorola/triumph/system/etc/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/motorola/triumph/system/etc/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/motorola/triumph/system/etc/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/motorola/triumph/system/etc/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw

#Media Opencore
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/etc/pvplayer.cfg:system/etc/pvplayer.cfg \
    device/motorola/triumph/system/lib/libopencore_author.so:system/lib/libopencore_author.so \
    device/motorola/triumph/system/lib/libopencore_common.so:system/lib/libopencore_common.so \
    device/motorola/triumph/system/lib/libopencore_download.so:system/lib/libopencore_download.so \
    device/motorola/triumph/system/lib/libopencore_downloadreg.so:system/lib/libopencore_downloadreg.so \
    device/motorola/triumph/system/lib/libopencorehw.so:system/lib/libopencorehw.so \
    device/motorola/triumph/system/lib/libopencore_mp4local.so:system/lib/libopencore_mp4local.so \
    device/motorola/triumph/system/lib/libopencore_mp4localreg.so:system/lib/libopencore_mp4localreg.so \
    device/motorola/triumph/system/lib/libopencore_net_support.so:system/lib/libopencore_net_support.so \
    device/motorola/triumph/system/lib/libopencore_player.so:system/lib/libopencore_player.so \
    device/motorola/triumph/system/lib/libopencore_rtsp.so:system/lib/libopencore_rtsp.so \
    device/motorola/triumph/system/lib/libopencore_rtspreg.so:system/lib/libopencore_rtspreg.so 

# Modules
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/lib/modules/cifs.ko:system/lib/modules/cifs.ko

# Media Profiles
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/etc/media_profiles.xml:system/etc/media_profiles.xml

# Overlay
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/lib/liboverlay.so:system/lib/liboverlay.so \
    device/motorola/triumph/system/lib/hw/overlay.default.so:system/lib/hw/overlay.default.so

# RIL
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/lib/libril.so:system/lib/libril.so \
    device/motorola/triumph/system/lib/libril.so:obj/lib/libril.so \
    device/motorola/triumph/system/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    device/motorola/triumph/system/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/motorola/triumph/system/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/motorola/triumph/system/lib/libdiag.so:system/lib/libdiag.so \
    device/motorola/triumph/system/lib/liboncrpc.so:system/lib/liboncrpc.so \
    device/motorola/triumph/system/lib/libqmi.so:system/lib/libqmi.so \
    device/motorola/triumph/system/lib/libdsm.so:system/lib/libdsm.so \
    device/motorola/triumph/system/lib/libqueue.so:system/lib/libqueue.so \
    device/motorola/triumph/system/lib/libdll.so:system/lib/libdll.so \
    device/motorola/triumph/system/lib/libcm.so:system/lib/libcm.so \
    device/motorola/triumph/system/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    device/motorola/triumph/system/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    device/motorola/triumph/system/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    device/motorola/triumph/system/lib/libwms.so:system/lib/libwms.so \
    device/motorola/triumph/system/lib/libnv.so:system/lib/libnv.so \
    device/motorola/triumph/system/lib/libwmsts.so:system/lib/libwmsts.so \
    device/motorola/triumph/system/lib/libpbmlib.so:system/lib/libpbmlib.so \
    device/motorola/triumph/system/lib/libdss.so:system/lib/libdss.so \
    device/motorola/triumph/system/lib/libauth.so:system/lib/libauth.so \
    device/motorola/triumph/system/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/motorola/triumph/system/lib/libqmiservices.so:system/lib/libqmiservices.so \
    device/motorola/triumph/system/lib/libqdp.so:system/lib/libqdp.so \
    device/motorola/triumph/system/lib/libidl.so:system/lib/libidl.so \
    device/motorola/triumph/system/lib/libdsutils.so:system/lib/libdsutils.so \
    device/motorola/triumph/system/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    device/motorola/triumph/system/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    device/motorola/triumph/system/lib/libnetmgr.so:system/lib/libnetmgr.so \
    device/motorola/triumph/system/lib/libpdapi.so:system/lib/libpdapi.so \
    device/motorola/triumph/system/lib/libpdsm_atl.so:system/lib/libpdsm_atl.so \
    device/motorola/triumph/system/lib/libuim.so:system/lib/libuim.so

# Sensors
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/lib/hw/sensors.qcom.so:system/lib/hw/sensors.triumph.so

# Touchscreen
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/usr/idc/bi041p.idc:system/usr/idc/bi041p.idc

#Video Froyo Drivers
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/motorola/triumph/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/motorola/triumph/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/motorola/triumph/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/motorola/triumph/system/lib/libgsl.so:system/lib/libgsl.so

# Vold
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/etc/vold.fstab:system/etc/vold.fstab

#Wifi/BlueTooth
PRODUCT_COPY_FILES += \
    device/motorola/triumph/system/lib/modules/libra.ko:system/lib/modules/libra.ko \
    device/motorola/triumph/system/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/motorola/triumph/system/lib/modules/libra_ftm.ko:system/lib/modules/libra_ftm.ko \
    device/motorola/triumph/system/etc/firmware/wlan//qcom_fw.bin:system/etc/firmware/wlan/qcom_fw.bin \
    device/motorola/triumph/system/etc/firmware/wlan//qcom_wapi_fw.bin:system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/motorola/triumph/system/etc/firmware/wlan//qcom_wlan_nv.bin:system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/motorola/triumph/system/etc/firmware/wlan//cfg.dat:system/etc/firmware/wlan/cfg.dat \
    device/motorola/triumph/system/etc/firmware/wlan//qcom_cfg.ini:system/etc/firmware/wlan/qcom_cfg.ini \
    device/motorola/triumph/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

########################################################
# These are proprietary files for the Motorola Triumph #
#                       FINISH                         #
########################################################

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-motorola \
    ro.com.google.clientidbase.yt=android-motorola \
    ro.com.google.clientidbase.am=android-motorola \
    ro.com.google.clientidbase.ms=android-motorola \
    ro.com.google.clientidbase.gmm=android-motorola \
    persist.sys.use_dithering=0 \
    ro.sf.lcd_density=240 \
    ro.compcache.default=0 \
    ro.secure=0 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=32m

# Triumph uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# Set region
PRODUCT_DEFAULT_LANGUAGE := en_US
PRODUCT_DEFAULT_REGION := US

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := motorola_triumph
PRODUCT_DEVICE := triumph
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := MOTWX435KT
PRODUCT_MANUFACTURER := Motorola

# Adding boot sound play. Must be placed in /system/media/android_audio.mp3

    ro.config.play.bootsound=1
