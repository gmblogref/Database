CREATE PROCEDURE [dbo].[UserAccounts_Insert]
(
	  @UserName			VARCHAR(50)
	, @FirstName		VARCHAR(150)
	, @LastName			VARCHAR(150)
	, @Email			VARCHAR(50)
	, @Address			VARCHAR(50)
	, @City				VARCHAR(50)
	, @State			VARCHAR(2)
	, @Zip				VARCHAR(10)
	, @BirthDate		DATE
	, @UserAccountsId	INT OUTPUT
)

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[UserAccounts]
	(
		  [UserName] 
		, [FirstName]
		, [LastName] 
		, [Email]    
		, [Address]  
		, [City]     
		, [State]    
		, [Zip]
		, [BirthDate]
		, [CreatedOn]
		, [LastModifiedOn]
	)
	VALUES
	(
		  @UserName	
		, @FirstName
		, @LastName 
		, @Email    
		, @Address  
		, @City     
		, @State    
		, @Zip
		, @BirthDate
		, GETDATE()
		, GETDATE()
	)

	SELECT @UserAccountsId = SCOPE_IDENTITY()
END