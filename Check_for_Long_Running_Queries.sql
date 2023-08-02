SELECT sql_id, plan_hash_value, elapsed_time, sql_text
FROM v$sql
WHERE elapsed_time > 300; -- Adjust the threshold (in seconds) as needed
