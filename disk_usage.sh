#!/bin/bash

threshold_critical=90
threshold_warning=80

current_usage=$(df -h / | awk 'NR==2 {print$5}'| cut -d '%' -f1)

echo "current usage is: $current_usage"

if [ $current_usage -ge $threshold_critical ]; then
    echo "Disk usage is critical ($current_usage%)" please take immediate action

elif [ $current_usage -ge $threshold_warning ]; then
    echo "Disk usage is high ($current_usage%)" please cleanup the disk space

else
    echo "Disk usage is normal ($current_usage)"
fi