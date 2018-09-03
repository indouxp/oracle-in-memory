
whenever sqlerror exit failure rollback
set termout on
set echo on
set linesize 150
set timing on
prompt ****************************************
prompt first_name like '%９３%９９%'
select count(*) from tbl_emp where first_name like '%９３%９９%';

