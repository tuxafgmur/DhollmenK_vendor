# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := vendor/samsung/omap4-common

PRODUCT_PACKAGES += \
	gralloc.omap4430

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/system/etc/powervr.ini:system/etc/powervr.ini \
    $(LOCAL_PATH)/proprietary/system/vendor/bin/pvrsrvctl_SGX540_120:system/vendor/bin/pvrsrvctl_SGX540_120 \
    $(LOCAL_PATH)/proprietary/system/vendor/bin/pvrsrvinit:system/vendor/bin/pvrsrvinit \
    $(LOCAL_PATH)/proprietary/system/vendor/lib/hw/gralloc.omap4430.so:system/vendor/lib/hw/gralloc.omap4430.so \
    $(LOCAL_PATH)/proprietary/system/vendor/lib/libIMGegl_SGX540_120.so:system/vendor/lib/libIMGegl_SGX540_120.so \
    $(LOCAL_PATH)/proprietary/system/vendor/lib/libPVRScopeServices_SGX540_120.so:system/vendor/lib/libPVRScopeServices_SGX540_120.so \
    $(LOCAL_PATH)/proprietary/system/vendor/lib/libglslcompiler_SGX540_120.so:system/vendor/lib/libglslcompiler_SGX540_120.so \
    $(LOCAL_PATH)/proprietary/system/vendor/lib/libpvr2d_SGX540_120.so:system/vendor/lib/libpvr2d_SGX540_120.so \
    $(LOCAL_PATH)/proprietary/system/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so:system/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so \
    $(LOCAL_PATH)/proprietary/system/vendor/lib/libsrv_init_SGX540_120.so:system/vendor/lib/libsrv_init_SGX540_120.so \
    $(LOCAL_PATH)/proprietary/system/vendor/lib/libsrv_um_SGX540_120.so:system/vendor/lib/libsrv_um_SGX540_120.so \
    $(LOCAL_PATH)/proprietary/system/vendor/lib/libusc_SGX540_120.so:system/vendor/lib/libusc_SGX540_120.so