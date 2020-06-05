CREATE PROCEDURE [dbo].[Apps_Insert]
(
	  @AppName		VARCHAR(50)
	, @AppDesc		VARCHAR(200)
	, @AppsId		INT OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Apps]
	(
		 [AppName]
		,[AppDesc]
		,[CreatedOn]
		,[LastModifiedOn]
	)
	VALUES
	(
		 @AppName
		,@AppDesc
		,GETDATE()
		,GETDATE()
	)

	SELECT @AppsId = SCOPE_IDENTITY()

END