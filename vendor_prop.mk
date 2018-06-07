#
# system.prop for addison
#

# Navigation bar In some GSI nav bar isn't enabled so force it

PRODUCT_PROPERTY_OVERRIDES += \
qemu.hw.mainkeys=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.version.qcom=LA.UM.6.6.r1-04400-89xx.0

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true \
    audio.offload.buffer.size.kb=64 \
    audio.offload.gapless.enabled=true \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.calfile0=/etc/acdbdata/Bluetooth_cal.acdb \
    persist.audio.calfile1=/etc/acdbdata/General_cal.acdb \
    persist.audio.calfile2=/etc/acdbdata/Global_cal.acdb \
    persist.audio.calfile4=/etc/acdbdata/Hdmi_cal.acdb \
    persist.audio.calfile3=/etc/acdbdata/Handset_cal.acdb \
    persist.audio.calfile5=/etc/acdbdata/Headset_cal.acdb \
    persist.audio.calfile6=/etc/acdbdata/Speaker_cal.acdb

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.fluence.speaker=true \
    persist.audio.fluence.voicecall=true \
    ro.qc.sdk.audio.fluencetype=none \
    ro.qc.sdk.audio.ssr=false
#Minimum duration for offload playback in secs
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.min.duration.secs=30
#Enable offload audio video playback by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.video=true

PRODUCT_PROPERTY_OVERRIDES += \
    use.voice.path.for.pcm.voip=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=8 \
    ro.config.media_vol_steps=25

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1 \
    qcom.bluetooth.soc=smd \
    qcom.bt.le_dev_pwr_class=1 \
    ro.bluetooth.dun=true \
    ro.bluetooth.hfp.ver=1.7 \
    ro.bluetooth.sap=true \
    ro.qualcomm.bt.hci_transport=smd

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1 \
    camera.display.umax=1920x1080 \
    camera.display.lmax=1280x720 \
    vidc.dec.downscalar_width=1920 \
    vidc.dec.downscalar_height=1088 \
    vidc.dec.disable.split.cpu=1 \
    vidc.enc.dcvs.extra-buff-count=2 \
    vidc.enc.disable_bframes=1 \
    vidc.enc.disable_pframes=1
#persist.camera.HAL3.enabled=1

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=1 \
    persist.cne.logging.qxdm=3974 \
    persist.cne.rat.wlan.chip.oem=WCN \
    persist.dpm.feature=0 \
    persist.sys.cnd.iwlan=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.enable.sglscale=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196610 \
    ro.sf.lcd_density=480

#property for game detection feature
PRODUCT_PROPERTY_OVERRIDES += \
    debug.enable.gamed=0

# Property to enable display default color mode
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.enable_default_color_mode=1 \
    ro.sf.hwc_set_default_colormode=true

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

#Property to enable IO cgroups
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.iocgrp.config=1

# Mods Platform
PRODUCT_PROPERTY_OVERRIDES += \
    sys.mod.platformsdkversion=205

#Enforce apps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.control_privapp_permissions=enforce

# Time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.delta_time.enable=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.qmi.adb_logmask=0 \
    persist.radio.apn_delay=5000 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.msgtunnel.start=true \
    persist.vendor.radio.0x9e_not_callname=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.dfr_mode_set=1 \
    persist.vendor.radio.eri64_as_home=1 \
    persist.vendor.radio.force_get_pref=1 \
    persist.vendor.radio.is_wps_enabled=true \
    persist.vendor.radio.jbims=1 \
    persist.vendor.radio.mt_sms_ack=30 \
    persist.vendor.radio.no_wait_for_card=1 \
    persist.vendor.radio.oem_ind_to_both=0 \
    persist.vendor.radio.qcril_uim_vcc_feature=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.relay_oprt_change=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.snapshot_enabled=1 \
    persist.vendor.radio.snapshot_timer=22 \
    persist.vendor.radio.sw_mbn_update=1 \
    rild.libargs=-d/dev/smd0 \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    persist.data.mode=concurrent

# set max background services
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=8 \
    persist.radio.sar_sensor=1

#usb
PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.ffs.max_write=524288 \
    sys.usb.ffs.max_read=524288 \
    sys.usb.mtp.device_type=3

#Enable B service adj transition by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.vendor.qti.sys.fw.bservice_limit=5 \
    ro.vendor.qti.sys.fw.bservice_age=5000

#Trim properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.use_trim_settings=true \
    ro.vendor.qti.sys.fw.empty_app_percent=50 \
    ro.vendor.qti.sys.fw.trim_empty_percent=100 \
    ro.vendor.qti.sys.fw.trim_cache_percent=100 \
    ro.vendor.qti.sys.fw.trim_enable_memory=2147483648