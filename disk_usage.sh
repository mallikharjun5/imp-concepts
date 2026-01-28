#!/bin/bash

threshold_critical=90
threshold_warning=80

current_usage=$(df -h / | awk 'NR==2 {print $5}' | cut -d '%' -f1)

echo "Current usage is: $current_usage%"

if [ "$current_usage" -ge "$threshold_critical" ]; then
    echo "Disk usage is CRITICAL ($current_usage%). Please take immediate action!"

elif [ "$current_usage" -ge "$threshold_warning" ]; then
    echo "Disk usage is HIGH ($current_usage%). Please clean up disk space."

else
    echo "Disk usage is NORMAL ($current_usage%)."
fi
