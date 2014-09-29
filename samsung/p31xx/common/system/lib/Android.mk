# Tuxafgmur - Dhollmen
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libhead
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib

LIBHEAD_SYMLINK := $(TARGET_OUT)/lib/libhead.so
$(LIBHEAD_SYMLINK): LIBHEAD_FILE := libjhead.so
$(LIBHEAD_SYMLINK): $(LOCAL_INSTALLED_MODULE) $(LOCAL_PATH)/Android.mk
	@echo "Symlink: $@ -> $(LIBHEAD_FILE)"
	@rm -rf $@
	$(hide) ln -fs $(LIBHEAD_FILE) $@

ALL_DEFAULT_INSTALLED_MODULES += $(LIBHEAD_SYMLINK)

all_modules: $(LIBHEAD_SYMLINK)
