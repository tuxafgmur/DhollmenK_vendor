# Copyright (C) 2012 The CyanogenMod Project
# Tuxafgmur - Dhollmen
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

LOCAL_PATH := vendor/samsung

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/tab2-common/system/lib/libril.so:obj/lib/libril.so \
    $(LOCAL_PATH)/tab2-common/system/lib/libsecril-client.so:obj/lib/libsecril-client.so

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/tab2-common/system/lib/libril.so:system/lib/libril.so \
    $(LOCAL_PATH)/tab2-common/system/lib/libsecril-client.so:system/lib/libsecril-client.so \

# TvOut
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/p51xx/p5110/system/bin/bintvoutservice:system/bin/bintvoutservice \
    $(LOCAL_PATH)/p51xx/p5110/system/etc/init.d/70-BinTvService:system/etc/init.d/70-BinTvService \
    $(LOCAL_PATH)/p51xx/p5110/system/lib/libhdcp.so:system/lib/libhdcp.so \
    $(LOCAL_PATH)/p51xx/p5110/system/lib/libtvoutinterface.so:system/lib/libtvoutinterface.so \
    $(LOCAL_PATH)/p51xx/p5110/system/lib/libtvout_jni.so:system/lib/libtvout_jni.so \
    $(LOCAL_PATH)/p51xx/p5110/system/lib/libtvoutservice.so:system/lib/libtvoutservice.so
