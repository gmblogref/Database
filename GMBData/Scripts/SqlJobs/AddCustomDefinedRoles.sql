/*					
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 This file creates custom ROLES for the database 				
--------------------------------------------------------------------------------------
*/

--------------------------------------------------------------------------------------
/*
	Adding db_execproc role
	Will give users added to this role EXECUTE PERMS on all stored procedures
	that are part of the [$(DatabaseSchema)]

	https://www.patrickkeisler.com/2012/10/grant-execute-permission-on-all-stored.html
*/
--------------------------------------------------------------------------------------
IF NOT EXISTS
(   SELECT * FROM sys.database_principals p WHERE p.name = [$(ExecProcRole)]
)
BEGIN
    CREATE ROLE [$(ExecProcRole)];
END
GO

GRANT EXECUTE ON SCHEMA::[$(DatabaseSchema)] TO [$(ExecProcRole)];
GO