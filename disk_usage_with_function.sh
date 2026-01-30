#!/bin/bash

# Function to check disk usage
check_disk_usage() {
    local threshold=80   # Threshold percentage
    local disk_usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
    echo "Disk usage: $disk_usage%"

    if (( disk_usage >= threshold )); then
        echo "Warning: Disk usage exceeds $threshold%."
        # Add logic to send alert (e.g., email or notification)
    else
        echo "Disk usage within limits."
    fi
}

# Example usage
check_disk_usage
