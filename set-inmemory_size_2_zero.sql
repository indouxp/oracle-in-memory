whenever sqlerror exit failure rollback

show parameters mem

alter system set inmemory_size=0 scope=spfile;

shutdown immediate;

startup;

show parameters mem
