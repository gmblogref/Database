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
		,[BirthDate]
	FROM
		[dbo].[UserAccounts]
END
