SELECT sql_id, plan_hash_value, executions, cpu_time, elapsed_time, buffer_gets, sql_text
FROM v$sql
ORDER BY cpu_time DESC;
