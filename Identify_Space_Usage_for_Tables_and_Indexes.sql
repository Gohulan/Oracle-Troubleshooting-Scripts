SELECT owner, segment_name, segment_type, tablespace_name, bytes / (1024 * 1024) as mb
FROM dba_segments
ORDER BY bytes DESC;
