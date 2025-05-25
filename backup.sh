#!/bin/bash

# Gensyn AI RL Swarm - Backup Script for swarm.pem

BACKUP_FILE="swarm.pem"
BACKUP_DEST="$HOME/gensyn-backups"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DEST"

# Copy file if it exists
if [ -f "$BACKUP_FILE" ]; then
    cp "$BACKUP_FILE" "$BACKUP_DEST/"
    echo "✅ Backup completed: $BACKUP_FILE → $BACKUP_DEST/"
else
    echo "❌ Error: $BACKUP_FILE not found in current directory."
fi