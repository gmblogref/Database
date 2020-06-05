CREATE PROCEDURE [dbo].[Apps_Update]
(
	 @AppsId	INT
	,@AppName	VARCHAR(50)
	,@AppDesc	VARCHAR(200)
)
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE
		[dbo].[Apps]
	SET
		 [AppName]			= @AppName
		,[AppDesc]			= @AppDesc
		,[LastModifiedOn]	= GETDATE()
	WHERE
		[AppsId] = @AppsId
END