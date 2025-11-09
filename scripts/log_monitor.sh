#!/bin/bash
# log_monitor.sh — Monitor system logs for errors and warnings

LOG_FILE="/var/log/syslog"
OUTPUT_LOG="$HOME/System-Maintenance-Bash-Suite/log_monitor_$(date +%F_%H-%M-%S).log"

echo "===============================" | tee -a "$OUTPUT_LOG"
echo " Log Monitoring Report " | tee -a "$OUTPUT_LOG"
echo " Date: $(date)" | tee -a "$OUTPUT_LOG"
echo "===============================" | tee -a "$OUTPUT_LOG"
echo "" | tee -a "$OUTPUT_LOG"

if [ -f "$LOG_FILE" ]; then
    echo "🔹 Fetching the latest 15 error and warning entries..." | tee -a "$OUTPUT_LOG"
    grep -iE "error|warn" "$LOG_FILE" | tail -15 | tee -a "$OUTPUT_LOG"

    echo "" | tee -a "$OUTPUT_LOG"
    echo "✅ Log monitoring completed. Results saved in: $OUTPUT_LOG"
else
    echo "❌ Log file not found: $LOG_FILE" | tee -a "$OUTPUT_LOG"
fi

