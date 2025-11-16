#!/bin/bash
# Purpose: Download a file automatically

DOWNLOAD_URL="https://example.com/sample.txt"
DEST_DIR="/home/student/downloads"

# Create directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Download file using wget
wget -P "$DEST_DIR" "$DOWNLOAD_URL"

echo "Download completed and saved to $DEST_DIR"
