#!/bin/bash
# Purpose: Backup a directory with timestamp

SOURCE_DIR="/home/student/data"
BACKUP_DIR="/home/student/backup"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create backup folder if it does not exist
mkdir -p "$BACKUP_DIR"

# Compress and archive the directory
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .

echo "Backup completed successfully: $BACKUP_FILE"

