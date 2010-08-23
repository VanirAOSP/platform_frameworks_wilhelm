LOCAL_PATH:= $(call my-dir)

#

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := tests

LOCAL_C_INCLUDES:= \
	system/media/opensles/include

LOCAL_SRC_FILES:= \
    intbufq.c \
	getch.c

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libOpenSLES

ifeq ($(TARGET_OS),linux)
	LOCAL_CFLAGS += -DXP_UNIX
	#LOCAL_SHARED_LIBRARIES += librt
endif

LOCAL_MODULE:= slesTest_intbufq

include $(BUILD_EXECUTABLE)

#

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := tests

LOCAL_C_INCLUDES:= \
	system/media/opensles/include

LOCAL_SRC_FILES:= \
	multiplay.c

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libOpenSLES

ifeq ($(TARGET_OS),linux)
	LOCAL_CFLAGS += -DXP_UNIX
endif

LOCAL_MODULE:= slesTest_multiplay

include $(BUILD_EXECUTABLE)
