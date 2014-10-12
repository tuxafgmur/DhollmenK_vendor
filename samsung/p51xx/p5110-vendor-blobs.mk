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

LOCAL_PATH := vendor/samsung/p51xx

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/p5110/system/lib/libril.so:obj/lib/libril.so \
    $(LOCAL_PATH)/p5110/system/lib/libsecril-client.so:obj/lib/libsecril-client.so

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/p5110/system/lib/libril.so:system/lib/libril.so \
    $(LOCAL_PATH)/p5110/system/lib/libsecril-client.so:system/lib/libsecril-client.so \

# Bin
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/p5110/system/bin/bintvoutservice:system/bin/bintvoutservice

# Etc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/p5110/system/etc/init.d/80_BinTvService:system/etc/init.d/80_BinTvService

# Lib
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/p5110/system/lib/libtvoutinterface.so:system/lib/libtvoutinterface.so \
    $(LOCAL_PATH)/p5110/system/lib/libtvout_jni.so:system/lib/libtvout_jni.so \
    $(LOCAL_PATH)/p5110/system/lib/libtvoutservice.so:system/lib/libtvoutservice.so
