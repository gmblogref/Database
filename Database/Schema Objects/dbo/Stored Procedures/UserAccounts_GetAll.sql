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
	FROM
		[dbo].[UserAccounts]
END
