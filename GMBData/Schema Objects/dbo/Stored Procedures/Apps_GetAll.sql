CREATE PROCEDURE [dbo].[Apps_GetAll]
AS
BEGIN
	SELECT
		 [AppsId]
		,[AppName]
		,[AppDesc]
	FROM [dbo].[Apps]
END