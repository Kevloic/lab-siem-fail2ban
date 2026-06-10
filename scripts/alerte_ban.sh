#!/bin/bash

LOG_REMOTE="/var/log/remote.log"
LOG_ALERTE="/var/log/alertes_ban.log"

tail -f /var/log/fail2ban.log | while read line; do
  if echo "$line" | grep -q "Ban "; then
    IP=$(echo "$line" | grep -oP 'Ban \K[\d.]+')
    HEURE=$(date '+%Y-%m-%d %H:%M:%S')
    TENTATIVES=$(grep "Failed password" $LOG_REMOTE | grep "$IP" | wc -l)
    echo "[$HEURE] ALERTE - IP BANNIE: $IP - $TENTATIVES tentatives SSH" >> $LOG_ALERTE
  fi
done