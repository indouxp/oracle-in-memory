
whenever sqlerror exit failure rollback
set termout on
column count format "999,999,999,990"
select count(*) count from tbl_emp;

