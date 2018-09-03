set timing on

drop table tbl_emp;

whenever sqlerror exit failure rollback

create table tbl_emp (
  emp_id      char(8),
  first_name  varchar2(40),
  last_name   varchar2(40),
  email       varchar2(40),
  create_date date,
  update_date date
);

alter table tbl_emp
  add constraint pk_emp primary key (emp_id);

create index idx_emp_01 on tbl_emp(emp_id, last_name);

exit 0
