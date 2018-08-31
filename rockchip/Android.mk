LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LIBDRM_TOP := external/libdrm

LOCAL_MODULE := libdrm_rockchip

LOCAL_SHARED_LIBRARIES := libdrm

LOCAL_SRC_FILES := rockchip_drm.c rockchip_rga.c
LOCAL_EXPORT_C_INCLUDE_DIRS += \
	$(LOCAL_PATH)/rockchip

LOCAL_C_INCLUDES := \
	$(LIBDRM_TOP) \
	$(LIBDRM_TOP)/rockchip \
	$(LIBDRM_TOP)/include/drm

LOCAL_CFLAGS := \
	-DHAVE_LIBDRM_ATOMIC_PRIMITIVES=1

LOCAL_COPY_HEADERS := rockchip_drm.h rockchip_drmif.h rockchip_rga.h
LOCAL_COPY_HEADERS_TO := libdrm

LOCAL_SHARED_LIBRARIES := \
	libdrm \
	liblog

LOCAL_SHARED_LIBRARIES += libcutils

LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
