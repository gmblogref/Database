--------------------------------------------------------------------------------
-- Dot Net API User Setup
PRINT 'Setting $(ApiNetUser) Permissions...';
GO
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Set up Login in Master
--------------------------------------------------------------------------------
IF NOT EXISTS
(   SELECT 1 FROM master.sys.server_principals p WHERE p.name = N'$(ApiNetUser)'
)
BEGIN
    CREATE LOGIN [$(ApiNetUser)]
        WITH PASSWORD=N'$(ApiNetPassword)', DEFAULT_DATABASE = [master], DEFAULT_LANGUAGE = [us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
END

--------------------------------------------------------------------------------
-- Set up User in [$(DatabaseName)]
--------------------------------------------------------------------------------
IF NOT EXISTS
(   SELECT 1 FROM sys.database_principals p WHERE p.name = N'$(ApiNetUser)'
)
BEGIN
    CREATE USER [$(ApiNetUser)] FOR LOGIN [$(ApiNetUser)];
END

--------------------------------------------------------------------------------
-- Add User to Roles
--------------------------------------------------------------------------------
ALTER ROLE [db_datareader]  ADD MEMBER [$(ApiNetUser)];
ALTER ROLE [db_datawriter]  ADD MEMBER [$(ApiNetUser)];
ALTER ROLE [db_execproc]    ADD MEMBER [$(ApiNetUser)];

GRANT CONNECT SQL TO [$(ApiNetUser)]
GO
GRANT VIEW ANY DEFINITION TO [$(ApiNetUser)]
GO