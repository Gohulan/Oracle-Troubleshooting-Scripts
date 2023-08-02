-- Connect as a privileged user (e.g., SYSTEM, SYS, or a user with DBA privileges)
-- and execute the following SQL script:

-- Replace 'YourSuperUser' and 'YourUserPassword' with appropriate values
CREATE USER Gohulan IDENTIFIED BY Password#123;

-- Grant the necessary privileges to the new user similar to SYS
GRANT CONNECT, RESOURCE, DBA TO Gohulan;
GRANT SYSDBA TO Gohulan;

