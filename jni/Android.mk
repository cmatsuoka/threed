LOCAL_PATH	:= $(call my-dir)/..
#LOCAL_ARM_MODE	:= arm

include $(CLEAR_VARS)

include $(LOCAL_PATH)/src/Makefile
#include $(LOCAL_PATH)/src/loaders/Makefile

SRC_SOURCES	:= $(addprefix src/,$(SRC_OBJS))
#LOADERS_SOURCES := $(addprefix src/loaders/,$(LOADERS_OBJS))

LOCAL_MODULE    := threed
LOCAL_CFLAGS	:= -O3 -I$(LOCAL_PATH)/include -I$(LOCAL_PATH)/src
LOCAL_LDLIBS	:= -Lbuild/platforms/android-3/arch-arm/usr/lib -llog
LOCAL_SRC_FILES := $(SRC_SOURCES:.o=.c.arm)

include $(BUILD_SHARED_LIBRARY)
