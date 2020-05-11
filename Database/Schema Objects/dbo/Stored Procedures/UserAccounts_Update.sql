CREATE PROCEDURE [dbo].[UserAccounts_Update]
(
	 @UserAccountsId    INT         
	,@UserName          VARCHAR(50) 
	,@FirstName         VARCHAR(150)
	,@LastName          VARCHAR(150)
	,@Email             VARCHAR(50) 
	,@Address           VARCHAR(50) 
	,@City              VARCHAR(50) 
	,@State             VARCHAR(2)  
	,@Zip               VARCHAR(10)
	,@BirthDate			DATE
)
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE
		[dbo].[UserAccounts]
	SET
		 [UserName]			= @UserName
		,[FirstName]		= @FirstName
		,[LastName]			= @LastName
		,[Email]			= @Email
		,[Address]			= @Address
		,[City]				= @City
		,[State]			= @State
		,[Zip]				= @Zip
		,[BirthDate]		= @BirthDate
		,[LastModifiedOn]	= GETDATE()
	WHERE
		[UserAccountsId] = @UserAccountsId
END
