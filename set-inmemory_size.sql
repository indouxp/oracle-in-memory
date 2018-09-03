whenever sqlerror exit failure rollback

show parameters mem

alter system set inmemory_size=256M scope=spfile;
--alter system set inmemory_size=700M scope=spfile;
--alter system set inmemory_size=1024M scope=spfile;

shutdown immediate;

startup;

show parameters mem
