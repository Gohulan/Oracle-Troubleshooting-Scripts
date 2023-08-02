-- Connect as a privileged user (e.g., SYSTEM, SYS, or a user with DBA privileges)
-- and execute the following SQL script:

-- Replace 'YourNewUser' and 'YourUserPassword' with appropriate values
CREATE USER SELECTSG IDENTIFIED BY Password#123;

-- Grant the necessary privileges to the new user
GRANT CREATE SESSION TO SELECTSG;
GRANT SELECT ANY TABLE TO SELECTSG;

-- PL/SQL block to grant SELECT privilege on all tables in all schemas to the new user
BEGIN
  FOR s IN (SELECT username FROM all_users WHERE username NOT IN ('SYS', 'SYSTEM', 'SELECTSG')) LOOP
    FOR t IN (SELECT owner, table_name FROM all_tables WHERE owner = s.username) LOOP
      EXECUTE IMMEDIATE 'GRANT SELECT ON ' || t.owner || '.' || t.table_name || ' TO SELECTSG';
    END LOOP;
  END LOOP;
END;
/
