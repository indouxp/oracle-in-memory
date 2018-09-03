--
-- ポピュレーション
--
whenever sqlerror exit failure rollback

select segment_name, bytes/1024/1024 as mb, inmemory_size/1024/1024 as inmemory_mb, populate_status from v$im_segments;

exit 0
