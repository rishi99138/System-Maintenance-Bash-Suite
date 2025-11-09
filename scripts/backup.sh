#!/bin/bash
# backup.sh — Automate backup of user files

# === CONFIGURATION ===
SOURCE_DIR="$HOME/Documents"                 # folder to back up
DEST_DIR="$HOME/System-Maintenance-Bash-Suite/Backups"  # where backups will be stored
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")      # generate a timestamp
BACKUP_NAME="backup_$TIMESTAMP"
BACKUP_PATH="$DEST_DIR/$BACKUP_NAME"

# === CREATE BACKUP ===
echo "Creating backup..."
mkdir -p "$BACKUP_PATH"
cp -r "$SOURCE_DIR"/* "$BACKUP_PATH"/

# === VERIFY & REPORT ===
if [ $? -eq 0 ]; then
    echo "✅ Backup successful! Files saved in: $BACKUP_PATH"
else
    echo "❌ Backup failed. Please check paths or permissions."
fi

