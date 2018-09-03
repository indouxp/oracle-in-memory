#!/bin/sh

set -eu

USER=indou
PASS=indou
TNS=orcl

sqlplus -S $USER/$PASS <<EOT
whenever sqlerror exit failure rollback
--alter session set inmemory_query = enable;
@ slt-tbl_emp.__.sql
-- @ slt-tbl_emp.00.sql
-- @ slt-tbl_emp.01.sql
--@ slt-tbl_emp.02.sql
@ slt-tbl_emp.03.sql
exit 0
EOT


