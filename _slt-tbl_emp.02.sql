
whenever sqlerror exit failure rollback
set termout off
set linesize 150
set timing on
prompt ****************************************
prompt first_name like '%５９９９９%'
select count(*) from tbl_emp where first_name like '%５９９９９%';

