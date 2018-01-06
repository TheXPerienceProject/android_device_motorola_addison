#!/system/bin/sh
# Original author: Motorola Mobility LLC
# Modified author: Klozz Jesús (TeamMEX@XDA-Developers)
# Please don't remove the author file i/e modifique the same
# Thanks to Davtse for the help doing this work.
# date: 12 oct 2017 19:21:09
# Fixes 26 oct 2017 16:47:37
# add posibility to load greybus from vendor  13-jan-2018 08:29:35am

debug=$(getprop ro.boot.gbdebug 2> /dev/null)
bootmode=$(getprop ro.bootmode 2> /dev/null)

# If androidboot.gbdebug is set on command line, skip inserting
# the pre-installed modules.
if [ "$debug" == "1" ]; then
    return 0
fi

#Load the Greybus main driver 
insmod /system/lib/modules/greybus.ko
insmod /system/vendor/lib/modules/greybus.ko


#Load the Mods Main Driver
insmod /system/lib/modules/gb-mods.ko
insmod /system/vendor/lib/modules/gb-mods.ko

# Only support PTP and BATTERY in charge-only mode
if [ "$bootmode" == "charger" ]; then
    insmod /system/lib/modules/gb-mods.ko
    insmod /system/lib/modules/gb-battery.ko
    insmod /system/lib/modules/gb-ptp.ko
	#Load from vendor
    insmod /system/vendor/lib/modules/gb-mods.ko
    insmod /system/vendor/lib/modules/gb-battery.ko
    insmod /system/vendor/lib/modules/gb-ptp.ko

    return 0
fi

#load all the greybus drivers
gbmods="/system/lib/modules/gb-*"
for mod in $gbmods
do
    insmod $mod
done


#load all the greybus drivers from vendor
gbmodsvendor="/system/vendor/lib/modules/gb-*"
for modvendor in $gbmodsvendor
do
    insmod $modvendor
done

#Load the V4l2 driver for the required for the cameramod.
insmod /system/lib/modules/v4l2-hal.ko
#Load from vendor if not exist on system/lib
insmod /system/vendor/lib/modules/v4l2-hal.ko
start mods_camd #initialize the Camera mod service.