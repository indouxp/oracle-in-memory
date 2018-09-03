whenever sqlerror exit failure rollback

show parameters mem

alter system set inmemory_size=512M scope=spfile;
--alter system set inmemory_size=1024M scope=spfile;

shutdown immediate;

startup;

show parameters mem
