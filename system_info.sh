#!/bin/bash

# Function to gather system information
gather_system_info() {
    local hostname=$(hostname)
    local kernel=$(uname -r)   # kernel version will displayed
    local cpu_cores=$(grep "cpu cores" /proc/cpuinfo)
    local memory=$(free -h | awk '/Mem/{print $7}')
    local disk_usage=$(df -h / | awk 'NR==2 {print $5}')

    echo "System Information:"
    echo "Hostname: $hostname"
    echo "kernel : $kernel"
    echo "CPU cores: $cpu_cores"
    echo "Total memory: ${memory}MB"
    echo "Disk usage: $disk_usage used"
}

gather_system_info
