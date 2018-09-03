#!/bin/sh

set -eu
USER=indou
PASS=indou

echo "$(date '+%Y-%m-%d %H:%M:%S'): alter table tbl_emp inmemory"
sqlplus -S $USER/$PASS <<EOT
  whenever sqlerror exit failure rollback
  alter table tbl_emp inmemory memcompress for query low priority critical;
  exit 0
EOT

