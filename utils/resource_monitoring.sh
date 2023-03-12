#!/bin/bash

# Set the path to the log file
LOG_FILE="/utils/resource_monitoring.log"

# Get the current date and time
DATE_TIME=$(date +"%Y-%m-%d %H:%M:%S")

# Get the CPU usage percentage
CPU_USAGE=$(top -b -n 1 | grep "Cpu(s)" | awk '{print $2 + $4}')

# Get the memory usage percentage
MEM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

# Write the data to the log file
echo "$DATE_TIME CPU usage: $CPU_USAGE%, Memory usage: $MEM_USAGE%" >> $LOG_FILE
