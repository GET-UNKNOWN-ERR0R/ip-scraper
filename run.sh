#!/bin/bash

# Define file paths
URLS_FILE="urls.txt"
FETCH_SCRIPT="fetch_urls.sh"
LOG_FILE="script.log"

# Checking urls.txt file exists
if [ ! -f "$URLS_FILE" ]; then
    echo "Error: $URLS_FILE not found! Please create the file with URLs." | tee -a "$LOG_FILE"
    exit 1
fi

if [ ! -f "$FETCH_SCRIPT" ]; then
    echo "Error: $FETCH_SCRIPT not found!" | tee -a "$LOG_FILE"
    exit 1
fi

> "$LOG_FILE"
echo "Starting the Website IP Scraper..." | tee -a "$LOG_FILE"

chmod +x "$FETCH_SCRIPT"

# Run the fetch_urls.sh script 
{
    echo "Running fetch_urls.sh..."
    ./$FETCH_SCRIPT
    echo "Process completed."
} 2>&1 | tee -a "$LOG_FILE"

echo "IP address resolution completed. Check $LOG_FILE for details." | tee -a "$LOG_FILE"
