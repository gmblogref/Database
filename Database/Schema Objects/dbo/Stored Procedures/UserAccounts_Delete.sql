CREATE PROCEDURE [dbo].[UserAccounts_Delete]
(
	@UserAccountsId    INT
)
AS
BEGIN
	DELETE FROM
		[dbo].[UserAccounts]
	WHERE
		[UserAccountsId] = @UserAccountsId
END