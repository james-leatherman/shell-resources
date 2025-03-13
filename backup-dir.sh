#!/bin/bash

SOURCE="/path/to/important/data"
DEST="/path/to/backup/location"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
tar -czvf $DEST/backup_$TIMESTAMP.tar.gz $SOURCE
echo "Backup completed: $DEST/backup_$TIMESTAMP.tar.gz"
