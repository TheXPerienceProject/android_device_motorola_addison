include $(CLEAR_VARS)
LOCAL_VENDOR_MODULE := true

#LOCAL_COPY_HEADERS_TO := thermal-engine
LOCAL_COPY_HEADERS := ./mot_sensorhub_motosh.h

include $(BUILD_COPY_HEADERS)
