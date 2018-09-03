--
-- ポピュレーション
--
whenever sqlerror exit failure rollback
set linesize 150
set termout on

column segment_name format a30
prompt v$im_segments
select segment_name, bytes/1024/1024 as mb, inmemory_size/1024/1024 as inmemory_mb, populate_status from v$im_segments;

exit 0
