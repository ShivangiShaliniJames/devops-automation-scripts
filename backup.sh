#!/bin/bash

SOURCE_DIR=$1
BACKUP_DIR="./backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

# Create backup directory if not exists

mkdir -p $BACKUP_DIR

if [ -z "$SOURCE_DIR" ]; then
echo "Usage: ./backup.sh <directory_to_backup>"
exit 1
fi

# Perform backup

tar -czf $BACKUP_FILE $SOURCE_DIR

if [ $? -eq 0 ]; then
echo "✅ Backup successful: $BACKUP_FILE"
else
echo "❌ Backup failed"
fi
