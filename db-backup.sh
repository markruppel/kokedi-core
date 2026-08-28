#!/bin/bash

CURRENT_DATE=$(date +%F)

mariadb-dump -h127.1.0.1 -P3307 -uroot -ppassword acore_world > /home/thatbloodyshark/Documents/acore_world-${CURRENT_DATE}.sql; 
mariadb-dump -h127.1.0.1 -P3307 -uroot -ppassword acore_characters > /home/thatbloodyshark/Documents/acore_characters-${CURRENT_DATE}.sql; 
mariadb-dump -h127.1.0.1 -P3307 -uroot -ppassword acore_auth > /home/thatbloodyshark/Documents/acore_auth-${CURRENT_DATE}.sql; 
tar -zcvf /home/thatbloodyshark/Documents/backup.tar.gz /home/thatbloodyshark/Documents/*.sql --remove-files
