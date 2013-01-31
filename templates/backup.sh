#!/bin/bash

# compess system files
sudo tar czf {{backup_path}}/sys/etc.tgz /etc
sudo tar czf {{backup_path}}/sys/var_backups.tgz /var/backups
sudo tar czf {{backup_path}}/sys/kernel_configs.tgz /boot/config*

duplicity --full-if-older-than 3M --no-encryption --include {{backup_path}}/sys --include-globbing-filelist {{backup_list}} {{user_home}} $1
duplicity remove-older-than 3M $1
