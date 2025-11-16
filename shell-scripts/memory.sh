#!/bin/bash
# Purpose: Log CPU and memory usage every 60 seconds automatically

LOG_FILE="/home/student/cpu_mem.log"
INTERVAL=60   

echo "Timestamp, CPU(%), Memory(MB)" >> "$LOG_FILE"

while true; do
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    MEMORY_USED=$(free -m | awk '/Mem:/ {print $3}')
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

    echo "$TIMESTAMP, $CPU_USAGE, $MEMORY_USED" >> "$LOG_FILE"
    sleep "$INTERVAL"
done
