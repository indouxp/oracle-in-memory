#!/bin/sh

set -eu

USER=indou
PASS=indou
TNS=orcl

sqlplus -s $USER/$PASS <<EOT
whenever sqlerror exit failure rollback
@ slt-tbl_emp.00.sql
exit 0
EOT

sqlplus -s $USER/$PASS <<EOT
whenever sqlerror exit failure rollback
@ slt-tbl_emp.03.sql
exit 0
EOT


