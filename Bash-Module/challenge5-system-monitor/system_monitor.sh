#!/bin/bash

# Create a timestamp for this run
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

# Log file name (will be created in the current directory)
log_file="system_monitor_${timestamp}.log"

# Helper function to write to both screen and log
log() {
    echo "$1" | tee -a "$log_file"
}

log "==========================================="
log "      System Monitor - $timestamp"
log "==========================================="
log ""

# --- CPU Usage ---
log ">> CPU Usage:"
# Get the line that shows CPU usage from top (batch mode, 1 iteration)
cpu_line=$(top -bn1 | grep "Cpu(s)")
log "$cpu_line"
log ""

# --- Memory Usage ---
log ">> Memory Usage (total, used, free):"
# Use free to extract memory info
# NR==2: second line of 'free -h' output is the actual memory line
memory_info=$(free -h | awk 'NR==2 {print "Total: "$2", Used: "$3", Free: "$4}')
log "$memory_info"
log ""

# --- Disk Usage ---
log ">> Disk Usage:"
# Show human-readable disk usage
df -h | tee -a "$log_file"
log ""

# --- Top 5 Processes by Memory ---
log ">> Top 5 processes by memory usage:"
# ps aux sorted by memory (descending), skip header with head -n 6 (1 header + 5 processes)
ps aux --sort=-%mem | head -n 6 | tee -a "$log_file"
log ""

log "System monitor run complete. Log saved to: $log_file"
