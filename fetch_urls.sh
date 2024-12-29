#!/bin/bash

# Ensure the urls.txt file exists
if [ ! -f urls.txt ]; then
    echo "urls.txt file not found!"
    exit 1
fi

while IFS= read -r url; do
    python3 get_ip.py "$url"
done < urls.txt
