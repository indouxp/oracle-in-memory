
whenever sqlerror exit failure rollback
set termout on
set echo on
set linesize 150
set timing on
prompt ****************************************
prompt where emp_id like '%29%29%'
select count(*) from tbl_emp where emp_id like '%29%29%';
