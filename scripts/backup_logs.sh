#!/bin/bash

DATE=$(date '+%Y-%m-%d_%H-%M')
SOURCE="/var/log/remote.log"
DEST="/backup/logs"

sudo tar -czf $DEST/remote_logs_$DATE.tar.gz $SOURCE

ls -t $DEST/*.tar.gz | tail -n +8 | xargs -r rm

echo "Sauvegarde creee : remote_logs_$DATE.tar.gz"
ls -lh $DEST/