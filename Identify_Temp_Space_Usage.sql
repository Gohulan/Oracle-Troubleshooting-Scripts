SELECT tablespace_name, SUM(bytes_used) / (1024 * 1024) as mb_used
FROM v$temp_space_header
GROUP BY tablespace_name;
