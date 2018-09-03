#!/bin/sh

set -eu
USER=indou
PASS=indou

time sqlplus -S $USER/$PASS <<EOT
  whenever sqlerror exit failure rollback
  alter table tbl_emp no inmemory;
  exit 0
EOT

