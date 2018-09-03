--
-- tbl_empへの直積を使用してのデータ挿入
--
whenever sqlerror exit failure rollback

set termout off
truncate table tbl_emp;

set timing on
set termout on
insert into tbl_emp (emp_id, first_name, last_name, email, create_date, update_date)
  (select
     lpad(rownum, 8, '0'),
     concat('たつ', TO_MULTI_BYTE(lpad(rownum, 8, '0'))),
     concat('いん', TO_MULTI_BYTE(lpad(rownum, 8, '0'))),
     concat(concat('intatsu', TO_CHAR(lpad(rownum, 8, '0'))), '@gmail.com'),
     sysdate,
     sysdate
   from
     (select 0 from all_catalog where rownum <= 1000),
     (select 0 from all_catalog where rownum <= 1000)
  );

exit 0
