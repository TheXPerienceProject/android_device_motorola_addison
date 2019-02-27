#!/system/bin/sh

################################################################################
# helper functions to allow Android init like script

function write() {
    echo -n $2 > $1
}

function copy() {
    cat $1 > $2
}

# macro to write pids to system-background cpuset
function writepid_sbg() {
    until [ ! "$1" ]; do
        echo -n $1 > /dev/cpuset/system-background/tasks;
        shift;
    done;
}

################################################################################

{

sleep 10;

write /proc/sys/vm/swappiness 100
#write /sys/module/lowmemorykiller/parameters/minfree "18432,23040,27648,32256,36864,46080"

write /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor lisi
write /sys/devices/system/cpu/cpufreq/lisi/go_hispeed_load 85
write /sys/devices/system/cpu/cpufreq/lisi/use_sched_load 1
write /sys/devices/system/cpu/cpufreq/conservative/up_threshold 85
write /sys/devices/system/cpu/cpufreq/conservative/down_threshold 30

write /sys/module/cpu_boost/parameters/input_boost_freq "0:1036800"
write /sys/module/cpu_boost/parameters/input_boost_ms 750

write /sys/class/devfreq/1c00000.qcom,kgsl-3d0/min_freq 216000000


# Runtime fs tuning: as we have init boottime setting and kernel patch setting
# default readahead to 2048KB. We should adjust the setting upon boot_complete
# for runtime performance
write /sys/block/sda/queue/read_ahead_kb 128
write /sys/block/sda/queue/nr_requests 128
write /sys/block/sda/queue/iostats 1
write /sys/block/sda/queue/scheduler cfq

write /sys/block/sde/queue/read_ahead_kb 128
write /sys/block/sde/queue/nr_requests 128
write /sys/block/sde/queue/iostats 1
write /sys/block/sde/queue/scheduler cfq

write /sys/block/sde/queue/read_ahead_kb 128
write /sys/block/sde/queue/nr_requests 128
write /sys/block/sde/queue/iostats 1
write /sys/block/sde/queue/scheduler cfq

write /sys/block/dm-0/queue/read_ahead_kb 128
write /sys/block/dm-0/queue/nr_requests 128
write /sys/block/dm-0/queue/iostats 1
write /sys/block/dm-0/queue/scheduler cfq

setprop vendor.xperience.special_power SET
}&
