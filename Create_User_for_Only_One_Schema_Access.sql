
-- Replace 'YourPrivilegedUser' and 'YourUserPassword' with appropriate values
CREATE USER SGTEST4 IDENTIFIED BY Password#123;

-- Add other necessary privileges based on your requirements
GRANT CREATE SESSION TO SGTEST4;


-- Grant SELECT, INSERT, UPDATE, DELETE privileges on all tables in the 'location_activity_db' schema
BEGIN
  FOR t IN (SELECT table_name FROM all_tables WHERE owner = 'TRANSDB') LOOP
    EXECUTE IMMEDIATE 'GRANT SELECT, INSERT, UPDATE, DELETE ON TRANSDB.' || t.table_name || ' TO SGTEST4';
  END LOOP;
END;
/

