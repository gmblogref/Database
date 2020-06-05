/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.
 https://docs.microsoft.com/en-us/sql/ssdt/how-to-specify-predeployment-or-postdeployment-scripts?view=sql-server-ver15

 Example:      :r .\myfile.sql
               https://medium.com/@desmond80in/multiple-post-deployment-scripts-with-sql-server-project-5d3c9e2f52b4 
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


--------------------------------------------------------------------------------------
-- make sure the database owner is set correctly
--------------------------------------------------------------------------------------
EXEC dbo.sp_changedbowner @loginame = N'sa', @map = false;
GO

--------------------------------------------------------------------------------------
-- make sure the recovery model is set correctly
PRINT 'Set Recovery Mode'
--------------------------------------------------------------------------------------
/*
    The project defines recovery model as "bulk logged".
    If the target is in full (production) this will not break the log chain,
    but will minimize log growth when large indices are rebuilt.
*/
ALTER DATABASE [$(DatabaseName)] SET RECOVERY SIMPLE;
GO

--------------------------------------------------------------------------------------
-- List the SQL Job scripts here
PRINT 'Running SQL Job Scripts'
--------------------------------------------------------------------------------------

:r .\SqlJobs\AddCustomDefinedRoles.sql
GO

--------------------------------------------------------------------------------------
-- List the Permission scripts here
PRINT 'Running Permission Scripts'
--------------------------------------------------------------------------------------

:r .\Permissions\AddUserPermissions.sql
GO