#!/bin/bash

# Basit log backup script örneği
echo "Starting backup..."
mkdir -p backup
cp logs/*.log backup/
echo "Backup completed successfully!"
