include $(CLEAR_VARS)
LOCAL_MODULE := BatteryMod
LOCAL_SRC_FILES := BatteryApp/BatteryMod_release_1.0_170619_0737.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := .apk
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)