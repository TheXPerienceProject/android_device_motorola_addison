#!/sbin/sh

variant=`getprop ro.boot.radio`

if [ $variant == "China" ]; then
    rm /vendor/etc/libnfc-nxp.conf
    mv /vendor/etc/libnfc-nxp_ds.conf /vendor/etc/libnfc-nxp.conf
fi
