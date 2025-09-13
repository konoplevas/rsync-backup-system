#!/bin/bash

BACKUP_DIR="/tmp/backup"
HOME_DIR="$HOME"
LOG_FILE="$HOME/backup.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

mkdir -p "$BACKUP_DIR"

echo "[$TIMESTAMP] Starting backup" | tee -a "$LOG_FILE"

if rsync -av --delete --exclude='.*' -c "$HOME_DIR/" "$BACKUP_DIR/" >> "$LOG_FILE" 2>&1; then
    echo "[$TIMESTAMP] Backup completed successfully" | tee -a "$LOG_FILE"
    exit 0
else
    echo "[$TIMESTAMP] Backup FAILED" | tee -a "$LOG_FILE"
    exit 1
fi
