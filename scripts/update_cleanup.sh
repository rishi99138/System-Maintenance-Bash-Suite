#!/bin/bash
# update_cleanup.sh — Automate system updates and cleanup

LOGFILE="$HOME/System-Maintenance-Bash-Suite/update_cleanup_$(date +%F_%H-%M-%S).log"

echo "===============================" | tee -a "$LOGFILE"
echo " System Update & Cleanup Log " | tee -a "$LOGFILE"
echo " Date: $(date)" | tee -a "$LOGFILE"
echo "===============================" | tee -a "$LOGFILE"
echo "" | tee -a "$LOGFILE"

# Update package list
echo "🔹 Updating package list..." | tee -a "$LOGFILE"
sudo apt update -y >> "$LOGFILE" 2>&1

# Upgrade installed packages
echo "🔹 Upgrading packages..." | tee -a "$LOGFILE"
sudo apt upgrade -y >> "$LOGFILE" 2>&1

# Remove unnecessary packages
echo "🔹 Removing unused packages..." | tee -a "$LOGFILE"
sudo apt autoremove -y >> "$LOGFILE" 2>&1

# Clean apt cache
echo "🔹 Cleaning up cache..." | tee -a "$LOGFILE"
sudo apt clean >> "$LOGFILE" 2>&1

echo "" | tee -a "$LOGFILE"
echo "✅ System update & cleanup completed successfully!" | tee -a "$LOGFILE"
echo "Log saved at: $LOGFILE"

