#!/bin/bash

# Directory containing the .docx files
SOURCE_DIR="website/_site"

# Create date-based folder name (YYYYMMDD)
DATE_FOLDER=$(date +"%Y%m%d")

# Destination directory
DEST_DIR="docx_collab/$DATE_FOLDER"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy all .docx files
cp "$SOURCE_DIR"/*.docx "$DEST_DIR"

echo "Copied all .docx files from $SOURCE_DIR to $DEST_DIR"