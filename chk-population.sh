#!/bin/sh

echo "$(date '+%Y-%m-%d %H:%M:%S'): check populate_status"
sqlplus -S / as sysdba @ chk-population.sql
