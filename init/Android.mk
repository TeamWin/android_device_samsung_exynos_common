ifeq ($(TARGET_INIT_VENDOR_LIB),libinit_exynos)

LOCAL_PATH := $(call my-dir)
LIBINIT_EXYNOS_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_CPPFLAGS := \
	-Wall \
	-Werror -Wno-error=deprecated-declarations \
	-Wno-unused-parameter \
	-DANDROID_TARGET=\"$(TARGET_BOARD_PLATFORM)\"
LOCAL_SRC_FILES := init_exynos.cpp
ifneq ($(TARGET_LIBINIT_DEFINES_FILE),)
	LOCAL_SRC_FILES += ../../../../$(TARGET_LIBINIT_DEFINES_FILE)
endif
LOCAL_MODULE := libinit_exynos
include $(BUILD_STATIC_LIBRARY)

endif
