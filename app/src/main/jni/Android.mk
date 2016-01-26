LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#opencv
#OPENCVROOT_ANDROID is a system environment variable that points toe OpenCv-android-sdk
#example: OPENCVROOT_ANDROID = C:\Users\{USERNAME}\AppData\Local\Android\OpenCv-android-sdk
OPENCVROOT:= $(OPENCVROOT_ANDROID)
OPENCV_CAMERA_MODULES:=on
OPENCV_INSTALL_MODULES:=on
OPENCV_LIB_TYPE:=SHARED
include ${OPENCVROOT}\\sdk\\native\\jni\\OpenCV.mk



LOCAL_SRC_FILES := xsor_io_occlusion_NativeClass.cpp
LOCAL_LDLIBS += -llog
LOCAL_MODULE := MyLib

include $(BUILD_SHARED_LIBRARY)