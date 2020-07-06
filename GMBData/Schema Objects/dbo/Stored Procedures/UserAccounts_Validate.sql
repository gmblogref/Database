CREATE PROCEDURE [dbo].[User_Validate]
	  @UserName	VARCHAR(50) 
	, @Password	VARCHAR(70)
AS
BEGIN

	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

	SELECT
		 ua.[UserAccountsId]
	FROM 
		[dbo].[UserAccounts] AS ua
	WHERE
			ua.[UserName] = @UserName
		AND
			ua.[Password] = @Password

END
