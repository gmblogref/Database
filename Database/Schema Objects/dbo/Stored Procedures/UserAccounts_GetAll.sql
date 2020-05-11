CREATE PROCEDURE [dbo].[UserAccounts_GetAll]
AS
BEGIN
	SELECT
		 [UserAccountsId]
		,[UserName]
		,[FirstName]
		,[LastName]
		,[Email]
		,[Address]
		,[City]
		,[State]
		,[Zip]  
		,[CreatedOn]
		,[LastUpdated]
	FROM
		[dbo].[UserAccounts]
END
