📁 Challenge 5 — System Monitor Script (system_monitor.sh)

This script collects key system metrics such as CPU usage, memory usage, disk usage, and the top 5 memory-consuming processes.
It displays the information on-screen and saves it to a timestamped log file for auditing and monitoring purposes.

This challenge demonstrates real DevOps monitoring practices using core Linux commands.

🧾 What the Script Does
1. Generates a timestamp

Used to uniquely name the log file:

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
log_file="system_monitor_${timestamp}.log"

2. Displays & logs CPU usage

Extracted from top:

top -bn1 | grep "Cpu(s)"

3. Displays memory usage

Parsed from the free -h command:

free -h | awk 'NR==2 {print "Total: "$2", Used: "$3", Free: "$4}'

4. Shows disk usage

Using the human-readable format of df:

df -h

5. Lists top 5 memory-consuming processes

Sorted using ps:

ps aux --sort=-%mem | head -n 6


(The first line is the header, the next 5 lines are the top processes.)

6. Saves all output to a log file

Every printed line is also written to:

system_monitor_YYYY-MM-DD_HH-MM-SS.log


Thanks to the helper log() function which prints to the screen and appends to the log file:

log() {
    echo "$1" | tee -a "$log_file"
}

▶️ How to Run the Script
chmod +x system_monitor.sh
./system_monitor.sh


A log file will be created automatically, for example:

system_monitor_2025-12-15_14-30-02.log

💻 Example Output (Simplified)
===========================================
      System Monitor - 2025-12-15_14-30-02
===========================================

>> CPU Usage:
Cpu(s):  7.6%us,  1.2%sy,  0.0%ni, 90.5%id, ...

>> Memory Usage (total, used, free):
Total: 7.6G, Used: 2.3G, Free: 4.9G

>> Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1       100G   60G   35G  64% /

>> Top 5 processes by memory usage:
USER   PID %MEM COMMAND
root  1234  5.4 /usr/bin/python3
…

🌱 Key Learnings

System monitoring fundamentals (CPU, memory, disk, processes)

Using commands like top, free, df, and ps

Extracting and formatting command output

Using timestamps to create unique log files

Logging output with tee for dual-display and file write

Building structured, readable monitoring reports

💡 Challenge I Overcame

Working with multiple system commands and formatting their output required understanding how to extract the right lines and values. Using tools like awk, grep, and head helped me learn how DevOps engineers filter and format real system data.

I also learned how to log output in a reusable way using a custom function — a valuable pattern for larger automation scripts.

⚙️ Why This Matters in DevOps

Monitoring is one of the core responsibilities of DevOps engineers.
This challenge teaches the foundations of:

Resource monitoring

Logging

Reporting

Process analysis

Automating status checks

These skills apply directly to production systems, CI pipelines, containers, and cloud environments.

This script is a simplified version of what real monitoring agents (like Datadog, Prometheus, Nagios) do under the hood.
