
whenever sqlerror exit failure rollback
set termout off
set linesize 150
set timing on
prompt ****************************************
prompt where first_name like '%００５９９９９９%'
select * from tbl_emp where first_name like '%００５９９９９９%';

