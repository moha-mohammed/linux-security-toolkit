#!/bin/bash
# Simple backup script
SRC_DIR="$HOME/Documents"
DEST_DIR="$HOME/backup_$(date +%F_%H-%M-%S)"

echo "📦 Backing up $SRC_DIR to $DEST_DIR"
mkdir -p "$DEST_DIR"
cp -r "$SRC_DIR"/* "$DEST_DIR"

echo "✅ Backup completed successfully!"
