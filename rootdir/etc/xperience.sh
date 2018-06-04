#!/vendor/bin/sh

# Author: Carlos "Klozz" Jesús



# Configure input boost only addison support this

echo "1958400 2016000" > /sys/module/cpu_boost/parameters/input_boost_freq

echo 150 > /sys/module/cpu_boost/parameters/input_boost_ms



# Set Lisi and optimize it 652Mhz

echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/lisi/enable_prediction

echo 1 > /sys/devices/system/cpu/cpu4/cpufreq/lisi/enable_prediction

echo 59000 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/max_freq_hysteresis

echo lisi > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

echo 652800 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq

echo 652800 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq

echo 2016000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

echo 2016000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq



#configure Alessa thermal and disable msm thermal

echo 0 > /sys/module/msm_thermal/parameters/enabled

echo 1 > /sys/module/alessa_thermal/parameters/enabled

echo 1 > /sys/module/alessa_thermal/vdd_restriction/enabled

echo 65 > /sys/module/alessa_thermal/parameters/core_limit_temp_degC

echo 120 > /sys/module/alessa_thermal/parameters/poll_ms



# Disable userspace intervention

chmod 444 /sys/module/cpu_boost/parameters/input_boost_ms

chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/interactive/enable_prediction

chmod 444 /sys/devices/system/cpu/cpu4/cpufreq/interactive/enable_prediction

chmod 444 /sys/devices/system/cpu/cpu4/cpufreq/interactive/max_freq_hysteresis

chmod 444 /sys/module/alessa_thermal/parameters/enabled

chmod 444 /sys/module/alessa_thermal/vdd_restriction/enabled

chmod 444 /sys/module/alessa_thermal/parameters/core_limit_temp_degC

chmod 444 /sys/module/alessa_thermal/parameters/poll_ms

