CREATE PROCEDURE [dbo].[UserAccounts_GetById]
(
	@UserAccountId	INT
)
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
		,[LastModifiedOn]
	FROM
		[dbo].[UserAccounts]
	WHERE
		[UserAccountsId] = @UserAccountId
END
