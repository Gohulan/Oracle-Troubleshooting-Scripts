SELECT owner, object_name, object_type, status
FROM dba_objects
WHERE status = 'INVALID';
