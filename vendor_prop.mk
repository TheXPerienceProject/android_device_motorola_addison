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
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.calfile0=/vendor/etc/acdbdata/Bluetooth_cal.acdb \
    persist.vendor.audio.calfile1=/vendor/etc/acdbdata/General_cal.acdb \
    persist.vendor.audio.calfile2=/vendor/etc/acdbdata/Global_cal.acdb \
    persist.vendor.audio.calfile4=/vendor/etc/acdbdata/Hdmi_cal.acdb \
    persist.vendor.audio.calfile3=/vendor/etc/acdbdata/Handset_cal.acdb \
    persist.vendor.audio.calfile5=/vendor/etc/acdbdata/Headset_cal.acdb \
    persist.vendor.audio.calfile6=/vendor/etc/acdbdata/Speaker_cal.acdb

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    ro.vendor.audio.sdk.fluencetype=none \
    ro.qc.sdk.audio.ssr=false
#Minimum duration for offload playback in secs
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.min.duration.secs=30
#Enable offload audio video playback by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.video=true
#Enable h/w memory tuning
RODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.hw.binder.size_kbyte=1024

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.voice.path.for.pcm.voip=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=8 \
    ro.config.media_vol_steps=25

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=smd

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.aux.packagelist=com.motorola.cameraone \
    camera.disable_zsl_mode=1 \
    camera.display.umax=1920x1080 \
    camera.display.lmax=1280x720 \
    persist.camera.gyro.disable=0 \
    vidc.dec.downscalar_width=1920 \
    vidc.dec.downscalar_height=1088 \
    vidc.dec.disable.split.cpu=1 \
    vidc.enc.dcvs.extra-buff-count=2 \
    vidc.enc.disable_bframes=1 \
    vidc.enc.disable_pframes=1 \
    persist.camera.HAL3.enabled=1

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.logging.qxdm=3974 \
    persist.vendor.cne.rat.wlan.chip.oem=WCN \
    persist.vendor.dpm.feature=0 \
    persist.vendor.sys.cnd.iwlan=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.enable.sglscale=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    vendor.gralloc.disable_wb_ubwc=1 \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.nohdcp=1 \
    debug.sf.enable_hwc_vds=1 \
    dev.pm.dyn_samplingrate=1 \
    debug.gralloc.gfx_ubwc_disable=0 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196610 \
    vendor.display.perf_hint_window=50 \
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
    sys.mod.platformsdkversion=281

#Media codec binder
PRODUCT_PROPERTY_OVERRIDES += \
vendor.mediacodec.binder.size=6

#Enforce apps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.control_privapp_permissions=enforce

# Time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.delta_time.enable=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.qmi.adb_logmask=0 \
    persist.radio.msgtunnel.start=true \
    persist.vendor.radio.0x9e_not_callname=1 \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.cs_srv_type=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.dfr_mode_set=1 \
    persist.vendor.radio.eri64_as_home=1 \
    persist.vendor.radio.force_get_pref=1 \
    persist.vendor.radio.is_wps_enabled=true \
    persist.vendor.radio.lte_vrte_ltd=1 \
    persist.vendor.radio.mt_sms_ack=30 \
    persist.vendor.radio.no_wait_for_card=1 \
    persist.vendor.radio.oem_ind_to_both=0 \
    persist.vendor.radio.qcril_uim_vcc_feature=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.relay_oprt_change=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.snapshot_enabled=1 \
    persist.vendor.radio.snapshot_timer=22 \
    persist.vendor.radio.sw_mbn_update=0 \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ro.telephony.call_ring.multiple=false \
    ro.use_data_netmgrd=true \
    ro.vendor.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    persist.data.mode=concurrent \
    persist.vendor.data.mode=concurrent

# Radio ims
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.jbims=1 \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.vendor.radio.force_on_dc=true \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.ignore_dom_time=10 \
    persist.radio.ignore_dom_time=10 \
    persist.radio.is_wps_enabled=true \
    persist.radio.videopause.mode=1 \
    persist.radio.sap_silent_pin=1 \
    persist.radio.always_send_plmn=true \
    persist.rcs.supported=1

# set max background services
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=8 \
    persist.radio.sar_sensor=1

#sensors
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.sensor.hw.binder.size=8
    vendor.mediacodec.binder.size=6

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
    ro.vendor.qti.sys.fw.trim_enable_memory=2147483648 \
    ro.vendor.qti.sys.fw.bg_apps_limit=60

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
