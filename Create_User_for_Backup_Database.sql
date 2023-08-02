-- Connect as a privileged user (e.g., SYSTEM, SYS, or a user with DBA privileges)
-- and execute the following SQL script:

-- Replace 'YourBackupUser' and 'YourUserPassword' with appropriate values
CREATE USER YourBackupUser IDENTIFIED BY YourUserPassword;

-- Grant the necessary privileges to the new user for backups
GRANT CONNECT TO YourBackupUser;
GRANT CREATE SESSION TO YourBackupUser;
GRANT EXP_FULL_DATABASE TO YourBackupUser;
GRANT IMP_FULL_DATABASE TO YourBackupUser;
GRANT SELECT_CATALOG_ROLE TO YourBackupUser;
GRANT DBA TO YourBackupUser;
