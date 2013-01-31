#!/bin/bash

ssh -q -o "ConnectTimeout=3" $1 exit
if [[ $? = 0 ]]; then
  {{backup_script}} $2
fi
