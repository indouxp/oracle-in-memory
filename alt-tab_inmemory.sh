#!/bin/sh

set -eu
USER=indou
PASS=indou

time sqlplus -S $USER/$PASS <<EOT
  whenever sqlerror exit failure rollback
  alter table tbl_emp inmemory memcompress for query low priority critical;
  exit 0
EOT

